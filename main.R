# before importing packages, install it in first place. The command goes below
# install_packages('C50')

#import dataset
my_data <- "D:/Penelitian Internal - 2019/using R/dataset.dat"
data_set <- read.table(file=my_data, header=TRUE, sep=",")

#import library C50
library(C50)

#menentukan data training dan data uji
X <- data_set[,2:7] 
Y <- data_set[,8]
train_x <- X[1:248,]
train_y <- Y[1:248]
test_x <- X[249:310,]
test_y <- Y[249:310]

#membentuk pohon keputusan
tree_model <- C5.0(x=train_x, y=train_y)
tree_model #mengetahui hasil
summary(tree_model) #kesimpulan
plot(tree_model)

#menguji data
predict_class_tree <- predict(tree_model, test_X, type=class)
sum(predict_class_tree==test_Y)/length(predict_class_tree)
predict_class_tree

predict_probability_tree <- predict(tree_model,test_X,type=prob)
predict_probability_tree

