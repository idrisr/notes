# `nm` and `otool`

`nm` - display name list (symbol table

http://stevenygard.com/projects/class-dump/

https://www.mikeash.com/pyblog/friday-qa-2011-12-02-object-file-inspection-tools.html

## list libraries linked against
`otool -L <mybinary>`


Each symbol name is preceded by its value (blanks if  undefined).   
Unless  the  -m option  is  specified,  this  value is followed by one of the following characters, representing the symbol type: 
U (undefined), 
A (absolute), 
T (text section symbol), 
D (data section symbol), 
B (bss section symbol), 
C (common symbol), - (for debugger symbol table entries; see -a below), 
S  (symbol  in  a  section  other  than  those above),  or  
I  (indirect symbol).  

If the symbol is local (non-external), the symbol's type is instead represented
by the corresponding lowercase letter.   A  lower case  u  in  a  dynamic
shared library indicates a undefined reference to a private external in another
module in th

