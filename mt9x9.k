/ 9x9 multiplication table in K
/ CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2025.
/ kona -b=0 mt9x9.k

item: {s:z*y; `0:$z; `0:"x"; `0:$y; `0:"=";
    if[s>9;`0:$(s%10)]; if[s<10;`0:" "]; `0:$(s!10); `0:"\t"}
line: {while[z<(x+3); item[x;y;z]; z+:1]; `0:"\n"}
block: {while[y<10; line[x;y;x]; y+:1]; `0:"\012"}
{while[x<10; block[x;y]; x+:3]}[1;1]
\\
