#include <stdlib.h>
#include <stdio.h>
#include <stdarg.h>
#include <map>
#include <set>
#include "semant.h"
#include "utilities.h"


extern int semant_debug;
extern char *curr_filename;

//////////////////////////////////////////////////////////////////////
//
// Symbols
//
// For convenience, a large number of symbols are predefined here.
// These symbols include the primitive type and method names, as well
// as fixed names used by the runtime system.
//
//////////////////////////////////////////////////////////////////////
static Symbol 
    arg,
    arg2,
    Bool,
    concat,
    cool_abort,
    copy,
    Int,
    in_int,
    in_string,
    IO,
    length,
    Main,
    main_meth,
    No_class,
    No_type,
    Object,
    out_int,
    out_string,
    prim_slot,
    self,
    SELF_TYPE,
    Str,
    str_field,
    substr,
    type_name,
    val;
//
// Initializing the predefined symbols.
//
static void initialize_constants(void)
{
    arg         = idtable.add_string("arg");
    arg2        = idtable.add_string("arg2");
    Bool        = idtable.add_string("Bool");
    concat      = idtable.add_string("concat");
    cool_abort  = idtable.add_string("abort");
    copy        = idtable.add_string("copy");
    Int         = idtable.add_string("Int");
    in_int      = idtable.add_string("in_int");
    in_string   = idtable.add_string("in_string");
    IO          = idtable.add_string("IO");
    length      = idtable.add_string("length");
    Main        = idtable.add_string("Main");
    main_meth   = idtable.add_string("main");
    //   _no_class is a symbol that can't be the name of any 
    //   user-defined class.
    No_class    = idtable.add_string("_no_class");
    No_type     = idtable.add_string("_no_type");
    Object      = idtable.add_string("Object");
    out_int     = idtable.add_string("out_int");
    out_string  = idtable.add_string("out_string");
    prim_slot   = idtable.add_string("_prim_slot");
    self        = idtable.add_string("self");
    SELF_TYPE   = idtable.add_string("SELF_TYPE");
    Str         = idtable.add_string("String");
    str_field   = idtable.add_string("_str_field");
    substr      = idtable.add_string("substr");
    type_name   = idtable.add_string("type_name");
    val         = idtable.add_string("_val");
}

ClassTable* classTable;
SymbolTable<char*, Class__class>* cTable;
SymbolTable<char*, Entry>* symbolTable;

Class_ curClass;

ClassTable::ClassTable(Classes classes) : semant_errors(0) , error_stream(cerr) {
    /* Fill this in */
    this->classes = classes->copy_list();
}

void ClassTable::install_basic_classes() {

    // The tree package uses these globals to annotate the classes built below.
   // curr_lineno  = 0;
    Symbol filename = stringtable.add_string("<basic class>");
    
    // The following demonstrates how to create dummy parse trees to
    // refer to basic Cool classes.  There's no need for method
    // bodies -- these are already built into the runtime system.
    
    // IMPORTANT: The results of the following expressions are
    // stored in local variables.  You will want to do something
    // with those variables at the end of this method to make this
    // code meaningful.

    // 
    // The Object class has no parent class. Its methods are
    //        abort() : Object    aborts the program
    //        type_name() : Str   returns a string representation of class name
    //        copy() : SELF_TYPE  returns a copy of the object
    //
    // There is no need for method bodies in the basic classes---these
    // are already built in to the runtime system.

    Class_ Object_class =
	class_(Object, 
	       No_class,
	       append_Features(
			       append_Features(
					       single_Features(method(cool_abort, nil_Formals(), Object, no_expr())),
					       single_Features(method(type_name, nil_Formals(), Str, no_expr()))),
			       single_Features(method(copy, nil_Formals(), SELF_TYPE, no_expr()))),
	       filename);
    cTable->addid(Object->get_string(), Object_class);

    // 
    // The IO class inherits from Object. Its methods are
    //        out_string(Str) : SELF_TYPE       writes a string to the output
    //        out_int(Int) : SELF_TYPE            "    an int    "  "     "
    //        in_string() : Str                 reads a string from the input
    //        in_int() : Int                      "   an int     "  "     "
    //
    Class_ IO_class = 
	class_(IO, 
	       Object,
	       append_Features(
			       append_Features(
					       append_Features(
							       single_Features(method(out_string, single_Formals(formal(arg, Str)),
										      SELF_TYPE, no_expr())),
							       single_Features(method(out_int, single_Formals(formal(arg, Int)),
										      SELF_TYPE, no_expr()))),
					       single_Features(method(in_string, nil_Formals(), Str, no_expr()))),
			       single_Features(method(in_int, nil_Formals(), Int, no_expr()))),
	       filename);
    cTable->addid(IO->get_string(), IO_class);

    //
    // The Int class has no methods and only a single attribute, the
    // "val" for the integer. 
    //
    Class_ Int_class =
	class_(Int, 
	       Object,
	       single_Features(attr(val, prim_slot, no_expr())),
	       filename);
    cTable->addid(Int->get_string(), Int_class);

    //
    // Bool also has only the "val" slot.
    //
    Class_ Bool_class =
	class_(Bool, Object, single_Features(attr(val, prim_slot, no_expr())),filename);
    cTable->addid(Bool->get_string(), Bool_class);

    //
    // The class Str has a number of slots and operations:
    //       val                                  the length of the string
    //       str_field                            the string itself
    //       length() : Int                       returns length of the string
    //       concat(arg: Str) : Str               performs string concatenation
    //       substr(arg: Int, arg2: Int): Str     substring selection
    //       
    Class_ Str_class =
	class_(Str, 
	       Object,
	       append_Features(
			       append_Features(
					       append_Features(
							       append_Features(
									       single_Features(attr(val, Int, no_expr())),
									       single_Features(attr(str_field, prim_slot, no_expr()))),
							       single_Features(method(length, nil_Formals(), Int, no_expr()))),
					       single_Features(method(concat, 
								      single_Formals(formal(arg, Str)),
								      Str, 
								      no_expr()))),
			       single_Features(method(substr, 
						      append_Formals(single_Formals(formal(arg, Int)), 
								     single_Formals(formal(arg2, Int))),
						      Str, 
						      no_expr()))),
	       filename);
    cTable->addid(Str->get_string(), Str_class);
}

////////////////////////////////////////////////////////////////////
//
// semant_error is an overloaded function for reporting errors
// during semantic analysis.  There are three versions:
//
//    ostream& ClassTable::semant_error()                
//
//    ostream& ClassTable::semant_error(Class_ c)
//       print line number and filename for `c'
//
//    ostream& ClassTable::semant_error(Symbol filename, tree_node *t)  
//       print a line number and filename
//
///////////////////////////////////////////////////////////////////

ostream& ClassTable::semant_error(Class_ c)
{                                                             
    return semant_error(c->get_filename(),c);
}    

ostream& ClassTable::semant_error(Symbol filename, tree_node *t)
{
    error_stream << filename << ":" << t->get_line_number() << ": ";
    return semant_error();
}

ostream& ClassTable::semant_error()                  
{                                                 
    semant_errors++;                            
    return error_stream;
} 



/*   This is the entry point to the semantic checker.

     Your checker should do the following two things:

     1) Check that the program is semantically correct
     2) Decorate the abstract syntax tree with type information
        by setting the `type' field in each Expression node.
        (see `tree.h')

     You are free to first do 1), make sure you catch all semantic
     errors. Part 2) can be done in a second stage, when you want
     to build mycoolc.
 */
void program_class::semant()
{
    initialize_constants();

    /* ClassTable constructor may do some semantic analysis */
    classTable = new ClassTable(classes);

    /* some semantic analysis code may go here */
    cTable = new SymbolTable<char*, Class__class>();
    cTable->enterscope();

    classTable->install_basic_classes();

    symbolTable = new SymbolTable<char*, Entry>();

    try {
        analyze();
    } catch (const char* msg) {
        classTable->semant_error(curClass) << msg << endl;
    }

    if (classTable->errors()) {
	    cerr << "Compilation halted due to static semantic errors." << endl;
	    exit(1);
    }
}

/*
 * Inheritance Graph Class
 */
class InheritanceGraph
{
private:
    std::map<Symbol, Symbol> graph;
public:
    void addEdge(const Symbol&, const Symbol&); // a inherits b
    int validate();
    int conform(const Symbol&, const Symbol&); // a conforms to b
    Symbol lca(Symbol, Symbol); // lca of a and b
}* g;

void InheritanceGraph::addEdge(const Symbol& a, const Symbol& b)
{
    if (graph.find(a) != graph.end()) {
        return;
    }
    graph[a] = b;
}

int InheritanceGraph::validate()
{
    for (std::map<Symbol, Symbol>::iterator it = graph.begin(); it != graph.end(); it++) {
        Symbol cur = it->first;
        Symbol next = it->second;
        std::set<Symbol> visited;
        visited.insert(cur);
        while (next != Object) {
            if (visited.find(next) != visited.end()) {
                return 1;
            }
            visited.insert(next);
            cur = next;
            next = graph[next];
        }
    }
    return 0;
}

int InheritanceGraph::conform(const Symbol& a, const Symbol& b)
{
    if (a == b)
        return 1;
    Symbol cur = a;
    if (cur == SELF_TYPE)
        cur = curClass->get_name();
    while (cur != Object) {
        if (cur == b) {
            return 1;
        }
        cur = graph[cur];
    }
    return cur == b;
}

Symbol InheritanceGraph::lca(Symbol a, Symbol b)
{
    if (a == b)
        return a;

    if (a == SELF_TYPE)
        a = curClass->get_name();

    if (b == SELF_TYPE)
        b = curClass->get_name();

    int ha = 0, hb = 0;
    Symbol cura = a, curb = b;

    while (cura != Object) {
        cura = graph[cura];
        ha++;
    }
    while (curb != Object) {
        curb = graph[curb];
        hb++;
    }

    cura = a;
    curb = b;
    if (ha >= hb) {
        for (int i = ha - hb; i > 0; i--) {
            cura = graph[cura];
        }
    }
    else {
        for (int i = hb - ha; i > 0; i--) {
            curb = graph[curb];
        }
    }

    while (cura != curb) {
        cura = graph[cura];
        curb = graph[curb];
    }
    return cura;
}

/*
 * Program Class
 */
void program_class::analyze() 
{
    // check inheritance
    g = new InheritanceGraph();
    g->addEdge(IO, Object);
    g->addEdge(Int, Object);
    g->addEdge(Bool, Object);
    g->addEdge(Str, Object);
    for (int i = classes->first(); classes->more(i); i = classes->next(i)) {
        curClass = classes->nth(i);
        g->addEdge(curClass->get_name(), curClass->get_parent());
    }
    if (g->validate()) {
        throw "Inheritance Violation";
    }

    // scan classes
    bool findMainClass = false;
    for (int i = classes->first(); classes->more(i); i = classes->next(i)) {
        curClass = classes->nth(i);
        char* className = curClass->get_name()->get_string();

        if (strcmp(className, "Main") == 0) {
            findMainClass = true;
        }

        if (strcmp(className, "SELF_TYPE") == 0) {
            throw "SELF_TYPE redeclared(used a class name).";
        }

        if (cTable->lookup(className) != NULL) {
            throw "Invalid redefinition.";
        }

        if (strcmp(className, "Object") == 0 || strcmp(className, "Bool") == 0 || strcmp(className, "Int") == 0 || strcmp(className, "String") == 0 || strcmp(className, "IO") == 0) {
            throw "Invalid redefinition.";
        }

        char *parentClassName = curClass->getParent()->get_string();
        if (strcmp(parentClassName, "Bool") == 0 || strcmp(parentClassName, "Int") == 0 || strcmp(parentClassName, "String") == 0 || strcmp(parentClassName, "SELF_TYPE") == 0) {
            throw "Invalid inheritance.";
        }

        cTable->addid(className, curClass);
    }
    if (!findMainClass) {
        classTable->semant_error() << "Main Class is not defined." << endl;
    }

    for (int i = classes->first(); classes->more(i); i = classes->next(i)) {
        curClass = classes->nth(i);
        if (ctable->lookup(cur_class->get_parent()->get_string()) == NULL) {
            throw "Inheritance from an undefined class.";
        }
        symbolTable->enterscope();
        curClass->analyze();
        symbolTable->exitscope();
    }
}

/*
 * Class Class
 */
Symbol class__class::get_name()
{
    return name;
}

Symbol class__class::get_parent()
{
    return parent;
}

Feature class__class::get_method(char* feature_name)
{
    for (int i = features->first(); features->more(i); i = features->next(i)) {
        Feature f = features->nth(i);
        if (f->get_formals() != NULL && strcmp(f->get_name()->get_string(), feature_name) == 0) {
            return f;
        }
    }
    return NULL;
}

Feature class__class::get_attr(char* feature_name)
{
    for (int i = features->first(); features->more(i); i = features->next(i)) {
        Feature f = features->nth(i);
        if (f->get_formals() == NULL && strcmp(f->get_name()->get_string(), feature_name) == 0) {
            return f;
        }
    }
    return NULL;
}

void class__class::analyze()
{
    for (int i = features->first(); features->more(i); i = features->next(i)) {
        Feature feature = features->nth(i);
        feature->analyze();
    }
}

/*
 * Method Class
 */
Symbol method_class::get_name()
{
    return name;
}

Formals method_class::get_formals()
{
    return formals;
}

Symbol method_class::get_type()
{
    return return_type;
}

void method_class::analyze()
{
    symbolTable->enterscope();

    if (cTable->lookup(return_type->get_string()) == NULL && return_type != SELF_TYPE) {
        throw "Undefined return type";
    }

    // find method from ancestors
    Feature feature = null;
    Class_ targetClass = cTable->lookup(curClass->get_parent()->get_string());
    while (true) {
        feature = targetClass->get_method(name->get_string());
        if (feature != NULL) {
            break;
        }
        if (targetClass->get_parent() == No_class) {
            break;
        }
        targetClass = cTable->lookup(targetClass->get_parent()->get_string());
    }
    // check overriding
    if (feature != NULL) {
        Formals parentFormals = feature->get_formals();
        if (parentFormals->len() != formals->len()) {
            throw "Invalid overriding!";
        }
        for (int i = formals->first(); formals->more(i); i = formals->next(i)) {
            Formal formal = formals->nth(i);
            formal->analyze();
            Formal parentFormal = parentFormals->nth(i);
            if (formal->get_type() != parentFormal->get_type()) {
                throw "Invalid overriding!";
            }
        }
        if (feature->get_type() != return_type) {
            throw "Invalid overriding!";
        }
    } else {
        for (int i = formals->first(); formals->more(i); i = formals->next(i)) {
            Formal formal = formals->nth(i);
            formal->analyze();
        }
    }

    expr->analyze();

    if (!g->conform(expr->get_type(), return_type)) {
        throw "expr type cannot conform to return type.";
    }

    symbolTable->exitscope();
}

/*
 * Attr Class
 */
Symbol attr_class::get_name()
{
    return name;
}

Symbol attr_class::get_formals()
{
    return NULL;
}

Symbol attr_class::get_type()
{
    return type_decl;
}

void attr_class::analyze()
{
    if (type_decl == SELF_TYPE) {
        type_decl = curClass->get_name();
    }

    if (strcmp(name->get_string(), "self") == 0) {
        throw "\'self\' cannot be the name of an attribute.";
    }

    // find attrs from ancestors
    Feature feature = null;
    Class_ targetClass = cTable->lookup(curClass->get_parent()->get_string());
    while (true) {
        feature = targetClass->get_attr(name->get_string());
        if (feature != NULL) {
            throw "Cannot override parent's attribute";
            break;
        }
        if (targetClass->get_parent() == No_class) {
            break;
        }
        targetClass = cTable->lookup(targetClass->get_parent()->get_string());
    }

    init->analyze();

    Symbol init_type = init->get_type();
    if (init_type != No_type && g->conform(init_type, type_decl) == false) {
        throw "type error in attr_class";
    }
    symbolTable->addid(name->get_string(), type_decl);
}

/*
 * Formal Class
 */
Symbol formal_class::get_name()
{
    return name;
}

Symbol formal_class::get_type()
{
    return type_decl;
}

void formal_class::analyze()
{
    if (symbolTable->probe(name->get_string()) != NULL) {
        throw "Duplicate name in formal param list";
    }
    if (name == self) {
        throw "Self as name of a formal parameter (illegal)";
    }
    if (type_decl == SELF_TYPE) {
        throw "SELF_TYPE given as a parameter type (illegal)";
    }
    symbolTable->addid(name->get_string(), type_decl);
}

/*
 * Branch Class
 */
Symbol branch_class::get_decl_type()
{
    return type_decl;
}

Symbol branch_class::get_expr_type()
{
    return expr->get_type();
}

Symbol branch_class::analyze()
{
    symbolTable->addid(name->get_string(), type_decl);
    expr->analyze();
}

/*
 * Assign Class
 */
void assign_class::analyze()
{
    expr->analyze();
    Symbol expr_type = expr->get_type();
    Symbol expected_type = symbolTable->lookup(name->get_string());
    if (expected_type == NULL) {
        Feature attr = NULL;
        Class_ targetClass = curClass;
        while (true) {
            attr = targetClass->get_attr(name->get_string());
            if (attr != NULL) {
                expected_type = attr->get_type();
                break;
            }
            if (targetClass->get_parent() == No_class) {
                break;
            }
            targetClass = cTable->lookup(targetClass->get_parent()->get_string());
        }
    }

    if (expected_type == NULL) {
        throw "type error in object_class";
    }

    if (!g->conform(expr_type, type)) {
        throw "type error in assign_class";
    }
    type = expr_type;
}

/*
 * Static Dispatch Class
 */
void static_dispatch_class::analyze()
{
    expr->analyze();
    Symbol expr_type = expr->get_type();
    if (expr_type == SELF_TYPE) {
        expr_type = curClass->get_name();
    }

    Feature feature = NULL;
    Class_ targetClass = cTable->lookup(expr_type->get_string());
    while (true) {
        feature = targetClass->get_method(name->get_string());
        if (feature != NULL) {
            break;
        }
        if (targetClass->get_parent() == No_class) {
            break;
        }
        targetClass = cTable->lookup(targetClass->get_parent()->get_string());
    }

    if (feature == NULL) {
        throw "type error in dispatch_class";
    }
    Symbol func_type = feature->get_type();
    if (func_type == SELF_TYPE) {
        func_type = expr_type;
    }

    for (int i = actual->first(); actual->more(i); i = actual->next(i)) {
        Expression act = actual->nth(i);
        act->analyze();
        if (!g->conform(act->get_type(), feature->get_formals()->nth(i)->get_type())) {
            throw "type error in dispatch_class";
        }
    }

    type = func_type;
}


