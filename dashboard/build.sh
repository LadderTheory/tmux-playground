dir='./dockerfiles'

files=`ls $dir`
for f in $files
do
    echo $f $dir/$f
    docker build -t neo_$f -f $dir/$f context
done