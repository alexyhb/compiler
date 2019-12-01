//
// Created by alex on 2019/11/25.
//

#include <stdio.h>
#include "calc3.h"
#include "y.tab.h"

static int lbl;

int ex(nodeType *p) {
    int lbl1, lbl2;

    if (!p) return 0;
    switch(p->type) {
        case typeCon:
            printf("\tpush\t%d\n", p->con.value);
            break;
        case typeId:
            printf("\tpush\t%c\n", p->id.i + 'a');
            break;
        case typeOpr:
            switch(p->opr.oper) {
                case WHILE:
                    printf("L%03d:\n", lbl1 = lbl++);
                    ex(p->opr.op[0]);
                    printf("\tjz\tL%03d\n", lbl2 = lbl++);
                    ex(p->opr.op[1]);
                    printf("\tjmp\tL%03d\n", lbl1);
                    printf("L%03d:\n", lbl2);
                    break;
                case IF:
                    ex(p->opr.op[0]);
                    if (p->opr.nops > 2) {
                        /* if else */
                        printf("\tjz\tL%03d\n", lbl1 = lbl++);
                        ex(p->opr.op[1]);
                        printf("\tjmp\tL%03d\n", lbl2 = lbl++);
                        printf("L%03d:\n", lbl1);
                        ex(p->opr.op[2]);
                        printf("L%03d:\n", lbl2);
                    } else {
                        /* if */
                        printf("\tjz\tL%03d\n", lbl1 = lbl++);
                        ex(p->opr.op[1]);
                        printf("L%03d:\n", lbl1);
                    }
                    break;
                case PRINT:
                    ex(p->opr.op[0]);
                    printf("\tpush \t$FINT\n");
                    printf("\tcall printf\n");
                    break;
                case '=':
                    ex(p->opr.op[1]);
                    printf("\tpop\t%c\n", p->opr.op[0]->id.i + 'a');
                    break;
                case UMINUS:
                    ex(p->opr.op[0]);
                    printf("\tpopq %%rax\n");
                    printf("\tneg %%rax\n");
                    printf("\tpushq %%rax\n");
                    break;
                case FACT:
                    ex(p->opr.op[0]);
                    printf("\tcall fact\n");
                    printf("\tpushq %%rax\n");
                    break;
                case LNTWO:
                    ex(p->opr.op[0]);
                    printf("\tcall lntwo\n");
                    printf("\tpushq %%rax\n");
                    break;
                default:
                    ex(p->opr.op[0]);
                    ex(p->opr.op[1]);
                    switch(p->opr.oper) {
                        case GCD:   printf("\tcall gcd\n"); break;
                        case '+':   printf("\tadd\t %%rbx %%rax\t \n"); break;
                        case '-':   printf("\tsub\t %%rbx %%rax \n"); break;
                        case '*':   printf("\tmul\t %%rbx \n"); break;
                        case '/':
                            printf("\tcltq")
                            printf("\tidiv %%rbx\n");
                            break;
                        case '<':
                            printf("\tmovq\t$0, %%rcx\n");
                            printf("\t\t%%rax, %%rbx\n");
                            printf("\tcmpq\t%%rax, %%rbx\n");
                            printf("\tsetg\t%%cl\n");
                            printf("\tpushq\t\%%rcx\n");
                            break;
                        case '>':
                            printf("\tmovq\t$0, %%rcx\n");
                            printf("\t\t%%rax, %%rbx\n");
                            printf("\tcmpq\t%%rax, %%rbx\n");
                            printf("\tsetl\t%%cl\n");
                            printf("\tpushq\t\%%rcx\n");
                            break;
                        case GE:
                            printf("\tmovq\t$0, %%rcx\n");
                            printf("\t\t%%rax, %%rbx\n");
                            printf("\tcmpq\t%%rax, %%rbx\n");
                            printf("\tsetge\t%%cl\n");
                            printf("\tpushq\t\%%rcx\n");
                            break;
                        case LE:
                            printf("\tmovq\t$0, %%rcx\n");
                            printf("\t\t%%rax, %%rbx\n");
                            printf("\tcmpq\t%%rax, %%rbx\n");
                            printf("\tsetle\t%%cl\n");
                            printf("\tpushq\t\%%rcx\n");
                            break;
                        case NE:
                            printf("\tmovq\t$0, %%rcx\n");
                            printf("\t\t%%rax, %%rbx\n");
                            printf("\tcmpq\t%%rax, %%rbx\n");
                            printf("\tsetne\t%%cl\n");
                            printf("\tpushq\t\%%rcx\n");
                            break;
                        case EQ:
                            printf("\tmovq\t$0, %%rcx\n");
                            printf("\t\t%%rax, %%rbx\n");
                            printf("\tcmpq\t%%rax, %%rbx\n");
                            printf("\tseteq\t%%cl\n");
                            printf("\tpushq\t\%%rcx\n");
                            break;
                    }
            }
    }
    return 0;
}
