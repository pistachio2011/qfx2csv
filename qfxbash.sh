less $1|tail -n +46|sed 's/000000.000\[-6:MDT\]//g'|sed 's/000000.000\[-7:MST\]//g' \
|grep -v -E 'FITID|INVSTMTRS|INVSTMTTRNRS|INVSTMTMSGSRSV1|SECLISTMSGSRSV1|SECLIST|MFINFO|SECINFO|SECID|SECNAME|TICKER|OFX'\
|grep -v -E 'INVPOSLIST|UNIQUEIDTYPE|SUBACCTSEC|SUBACCTFUND|BUYMF|INVBUY|INVTRAN|REINVEST|POSMF|INVPOS|HELDINACCT|TRANSFER' \
|tr -d '/'|tr -d '>'|tr '<' ','|sed 's/,,/,/g' \
|sed 's/DTTRADE//g'|sed 's/UNIQUEID//g'|sed 's/UNITS//g'|sed 's/UNITPRICE/$/g'|sed 's/TOTAL/$/g'|sed 's/BUYTYPE//g'|sed 's/INCOMETYPE//g' \
|sed 's/INCOMETYPED//g'|sed 's/TFERACTION//g'| sed 's/POSTYPE//g' \
|tr -d ' '|tr -d '\t'|tr -d ',' \
|sed 's/315911750/Fidelity 500 Index/g'|paste - - - - - -
|sort
#|sed 's/<\/UNIQUEID>\n<UNITS>/,/g'|sed 's/<\/UNITS>\n<UNITPRICE>/,/g'
