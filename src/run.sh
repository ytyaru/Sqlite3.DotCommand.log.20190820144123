SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd "$SCRIPT_DIR"

sqlite3 :memory: \
".log a.log" \
"values('Z');" \
"create table T(C text);" \
"insert into T values('A');" \
"update T set C='B';" \
"delete from T;" \
"aaa;"

cat a.log

