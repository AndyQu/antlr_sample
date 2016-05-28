# antlr_sample
简单计算器

## 写这个sample的目的
1. 熟悉如何使用antlr
2. 学习：Parser如何做token stream的parse，进而创建AST？（只理解基本思路，暂不深究实现）
3. 

## Parser如何parse token stream，进而创建AST？

从根节点rule开始，做Pattern Match。

1. 读了第一个token之后，Parser去找所有能够与这个token匹配的rule，得到一个rule_set 。
2. 若此rule_set仅包含一个rule，则使用这个rule做下面的递归匹配
3. 若此rule_set包含多个rule，则需要继续读后面的token，直到能够确定具体的rule

### 具体的例子，我在代码中加注释
