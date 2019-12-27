# bison -d calc1.y    produces calc1.tab.c
# bison -y -d calc1.y produces y.tab.c (the standard yacc output)

# # calc
# DIR=/lexyacc-code_lab3/\
# bison -y -d $(DIR)calc3.y\
# flex $(DIR)calc3.l\
# gcc -c y.tab.c lex.yy.c\
# gcc y.tab.o lex.yy.o $(DIR)calc3i.c -o /bin/calc3i


deafult:x86-backend

x86-backend:
    bison -y -d $(DIR)calc3.y
    flex $(DIR)calc3.l
    gcc -c y.tab.c lex.yy.c
    gcc y.tab.o lex.yy.o $(DIR)calc3i.c -o /bin/calc3i
all: x86-backend