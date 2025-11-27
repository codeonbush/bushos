# Shell 命令演示总结

## 文件和目录操作

### 查看文件
```bash
# 查看文件内容
cat filename.txt              # 显示全部内容
head -n 20 filename.txt       # 显示前20行
tail -n 20 filename.txt       # 显示后20行
less filename.txt             # 分页查看（可上下滚动）

# 查看文件信息
ls -lh                        # 列出文件详情（人类可读的大小）
file filename.txt             # 查看文件类型
wc -l filename.txt            # 统计行数
du -h filename.txt            # 查看文件大小
```

### 文件操作
```bash
# 创建和编辑
touch newfile.txt             # 创建空文件
mkdir mydir                   # 创建目录
mkdir -p path/to/dir          # 递归创建目录
cp file1.txt file2.txt        # 复制文件
mv oldname.txt newname.txt    # 重命名/移动文件
rm file.txt                   # 删除文件
rm -rf directory/             # 递归删除目录

# 文件权限
chmod +x script.sh            # 添加执行权限
chmod 755 script.sh           # 设置权限（rwxr-xr-x）
chmod -R 644 *.txt            # 递归设置权限
chown user:group file.txt     # 改变所有者
```

### 搜索文件
```bash
# 按名称搜索
find /path -name "*.py"       # 查找Python文件
find . -type f -name "*.txt"  # 查找文本文件
find . -type d -name "test*"  # 查找目录

# 按内容搜索
grep "关键词" file.txt        # 在文件中搜索
grep -r "关键词" /path        # 递归搜索目录
grep -n "def " *.py           # 显示行号
grep -i "error" log.txt       # 忽略大小写
```

## Python相关命令

```bash
# Python版本和路径
python3 --version             # 查看版本
which python3                 # 查找Python位置
whereis python3               # 查找Python所有相关文件

# 运行Python
python3 script.py             # 运行脚本
python3 -c "print('Hello')"   # 执行单行代码
python3 -m module             # 运行模块

# 包管理
pip3 list                     # 列出已安装的包
pip3 install package          # 安装包
pip3 install -r requirements.txt  # 从文件安装
pip3 show package             # 显示包信息
pip3 freeze > requirements.txt    # 导出依赖
```

## 系统信息

```bash
# 系统信息
uname -a                      # 系统详细信息
hostname                      # 主机名
whoami                        # 当前用户
pwd                           # 当前目录

# 磁盘和内存
df -h                         # 磁盘使用情况
du -sh *                      # 当前目录各文件大小
free -h                       # 内存使用情况
top                           # 实时进程监控（按q退出）
```

## 文本处理

```bash
# 查看和编辑
cat file.txt                  # 显示内容
more file.txt                 # 分页显示
less file.txt                 # 分页显示（更强大）
nano file.txt                 # 文本编辑器
vim file.txt                  # Vim编辑器

# 文本统计
wc -l file.txt                # 统计行数
wc -w file.txt                # 统计单词数
wc -c file.txt                # 统计字节数

# 文本处理
sort file.txt                 # 排序
uniq file.txt                 # 去重（需先排序）
cut -d',' -f1 file.csv        # 切分列
sed 's/old/new/g' file.txt    # 替换文本
awk '{print $1}' file.txt     # 打印第一列
```

## 进程管理

```bash
# 查看进程
ps aux                        # 查看所有进程
ps aux | grep python          # 查找Python进程
pgrep python                  # 查找进程ID
top                           # 实时监控

# 管理进程
kill PID                      # 终止进程
kill -9 PID                   # 强制终止
killall python3               # 终止所有Python进程
bg                            # 后台运行
fg                            # 前台运行
jobs                          # 查看后台任务
```

## 网络命令

```bash
# 网络连接
ping google.com               # 测试连通性
curl http://example.com       # 获取网页内容
wget http://example.com/file  # 下载文件
netstat -tuln                 # 查看网络连接
ifconfig / ip addr            # 查看网络接口

# HTTP请求
curl -X GET https://api.example.com
curl -X POST -H "Content-Type: application/json" -d '{"key":"value"}' https://api.example.com
```

## 压缩和解压

```bash
# tar归档
tar -czf archive.tar.gz dir/  # 压缩目录
tar -xzf archive.tar.gz       # 解压

# zip压缩
zip -r archive.zip dir/       # 压缩目录
unzip archive.zip             # 解压

# 其他格式
gzip file.txt                 # 压缩为.gz
gunzip file.txt.gz            # 解压.gz
```

## 管道和重定向

```bash
# 重定向
command > output.txt          # 输出重定向（覆盖）
command >> output.txt         # 追加到文件
command 2> error.txt          # 错误输出重定向
command > /dev/null 2>&1      # 丢弃所有输出

# 管道
ls -l | grep ".py"            # 过滤结果
cat file.txt | sort | uniq    # 排序去重
ps aux | grep python | wc -l  # 统计进程数

# 组合命令
command1 && command2          # 前者成功才执行后者
command1 || command2          # 前者失败才执行后者
command1; command2            # 顺序执行
```

## Git命令（常用）

```bash
# 基本操作
git status                    # 查看状态
git add file.txt              # 添加文件
git commit -m "message"       # 提交
git push                      # 推送
git pull                      # 拉取

# 分支操作
git branch                    # 查看分支
git checkout -b new-branch    # 创建并切换分支
git merge branch-name         # 合并分支

# 查看历史
git log                       # 查看提交历史
git diff                      # 查看改动
git show commit-id            # 查看某次提交
```

## 实用技巧

```bash
# 历史命令
history                       # 查看命令历史
!123                          # 执行第123条历史命令
!!                            # 执行上一条命令
Ctrl+R                        # 搜索历史命令

# 快捷键
Ctrl+C                        # 终止当前命令
Ctrl+D                        # 退出终端
Ctrl+L                        # 清屏
Ctrl+A                        # 光标移到行首
Ctrl+E                        # 光标移到行尾
Tab                           # 自动补全

# 别名
alias ll='ls -lah'            # 创建别名
alias python=python3          # Python别名
```

## 环境变量

```bash
# 查看环境变量
echo $PATH                    # 查看PATH
env                           # 查看所有环境变量
printenv                      # 同上

# 设置环境变量
export VAR_NAME=value         # 设置临时变量
export PATH=$PATH:/new/path   # 添加到PATH

# 永久设置（添加到~/.bashrc或~/.zshrc）
echo 'export VAR_NAME=value' >> ~/.bashrc
source ~/.bashrc              # 重新加载配置
```

---

**提示：** 使用 `man command` 查看任何命令的详细手册，例如 `man ls`
