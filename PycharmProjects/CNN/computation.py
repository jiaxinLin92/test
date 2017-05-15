# -*- coding: UTF-8 -*-

# import  tensorflow as tf
# a=tf.constant(4,name="input_a")
# b=tf.constant(3,name="input_b")
# c=tf.add(a,b,name="add_c")
# d=tf.mul(a,b,name="mul_d")
# e=tf.mul(c,d,name="mul_e")
#
# sess=tf.Session()
# print (sess.run(e))
# #writer=tf.train.SummaryWriter('./Users/Jessie/Desktop/my_graph',sess.graph)
#
# exit()
# #
# # # #tensorboard --logdir="/Users/Jessie/Desktop/my_graph"
# #tensorboard --logdir=${PWD}


# import tensorflow as tf
#
# # Define a variable of string dtype
# str = tf.Variable("Hello TensorFlow")
#
# # Define a session
# sess = tf.Session()
#
# # Initialize all variables by session run
# sess.run(tf.initialize_all_variables())
#
# s=sess.run(str)
#
# print s


###举例 mnist CNN 实现

# import numpy as np
# import tensorflow as tf
# from tensorflow.examples.tutorials.mnist import input_data
# # Import MINST data
# # import input_data
#
# mnist = input_data.read_data_sets("/tmp/data/", one_hot=True)
# # 这里主要是导入数据，数据通过input_data.py已经下载到/tmp/data/目录之下了，这里下载数据的时候，需要提前用浏览器尝试是否可以打开
# # http://yann.lecun.com/exdb/mnist/，如果打不开，下载数据阶段会报错。而且一旦数据下载中断，需要将之前下载的未完成的数据清空，重新
# # 进行下载，否则会出现CRC Check错误。read_data_sets是input_data.py里面的一个函数，主要是将数据解压之后，放到对应的位置。
# # In this example, we limit mnist data
# Xtr, Ytr = mnist.train.next_batch(5000)  # 5000 for training (nn candidates)
# Xte, Yte = mnist.test.next_batch(200)  # 200 for testing
# # mnist.train.next_batch，其中train和next_batch都是在input_data.py里定义好的数据项和函数。此处主要是取得一定数量的数据。
#
# # Reshape images to 1D
# Xtr = np.reshape(Xtr, newshape=(-1, 28 * 28))
# Xte = np.reshape(Xte, newshape=(-1, 28 * 28))
# # 将二维的图像数据一维化，利于后面的相加操作。
# # tf Graph Input
# xtr = tf.placeholder("float", [None, 784])
# xte = tf.placeholder("float", [784])
# # 设立两个空的类型，并没有给具体的数据。这也是为了基于这两个类型，去实现部分的graph。
#
# # Nearest Neighbor calculation using L1 Distance
# # Calculate L1 Distance
# distance = tf.reduce_sum(tf.abs(tf.add(xtr, tf.neg(xte))), reduction_indices=1)
# # Predict: Get min distance index (Nearest neighbor)
# pred = tf.arg_min(distance, 0)
# # 最近邻居算法，算最近的距离的邻居，并且获取该邻居的下标，这里只是基于空的类型，实现的graph，并未进行真实的计算。
# accuracy = 0.
# # Initializing the variables
# init = tf.initialize_all_variables()
# # 初始化所有的变量和未分配数值的占位符，这个过程是所有程序中必须做的，否则可能会读出随机数值。
# # Launch the graph
# with tf.Session() as sess:
#     sess.run(init)
#
#     # loop over test data
#     for i in range(len(Xte)):
#         # Get nearest neighbor
#         nn_index = sess.run(pred, feed_dict={xtr: Xtr, xte: Xte[i, :]})
#         # Get nearest neighbor class label and compare it to its true label
#         print "Test", i, "Prediction:", np.argmax(Ytr[nn_index]), "True Class:", np.argmax(Yte[i])
#         # Calculate accuracy
#         if np.argmax(Ytr[nn_index]) == np.argmax(Yte[i]):
#             accuracy += 1. / len(Xte)
#     print "Done!"
#     print "Accuracy:", accuracy
# # for循环迭代计算每一个测试数据的预测值，并且和真正的值进行对比，并计算精确度。该算法比较经典的是不需要提前训练，直接在测试阶段进行识别。
#


### CNN minst
import tensorflow as tf
import sys
from tensorflow.examples.tutorials.mnist import input_data


def weight_variable(shape):
    initial = tf.truncated_normal(shape, stddev=0.1)
    return tf.Variable(initial)


def bias_variable(shape):
    initial = tf.constant(0.1, shape=shape)
    return tf.Variable(initial)


def conv2d(x, W):
    return tf.nn.conv2d(x, W, strides=[1, 1, 1, 1], padding='SAME')


def max_pool_2x2(x):
    return tf.nn.max_pool(x, ksize=[1, 2, 2, 1], strides=[1, 2, 2, 1], padding='SAME')


mnist = input_data.read_data_sets("MNIST_data/", one_hot=True)

sess = tf.InteractiveSession()

x = tf.placeholder("float", shape=[None, 784])
y_ = tf.placeholder("float", shape=[None, 10])

W = tf.Variable(tf.zeros([784, 10]))
b = tf.Variable(tf.zeros([10]))

W_conv1 = weight_variable([5, 5, 1, 32])
b_conv1 = bias_variable([32])

x_image = tf.reshape(x, [-1, 28, 28, 1])

h_conv1 = tf.nn.relu(conv2d(x_image, W_conv1) + b_conv1)
h_pool1 = max_pool_2x2(h_conv1)

W_conv2 = weight_variable([5, 5, 32, 64])
b_conv2 = bias_variable([64])

h_conv2 = tf.nn.relu(conv2d(h_pool1, W_conv2) + b_conv2)
h_pool2 = max_pool_2x2(h_conv2)

# Now image size is reduced to 7*7
W_fc1 = weight_variable([7 * 7 * 64, 1024])
b_fc1 = bias_variable([1024])

h_pool2_flat = tf.reshape(h_pool2, [-1, 7 * 7 * 64])
h_fc1 = tf.nn.relu(tf.matmul(h_pool2_flat, W_fc1) + b_fc1)

keep_prob = tf.placeholder("float")
h_fc1_drop = tf.nn.dropout(h_fc1, keep_prob)

W_fc2 = weight_variable([1024, 10])
b_fc2 = bias_variable([10])
y_conv = tf.nn.softmax(tf.matmul(h_fc1_drop, W_fc2) + b_fc2)

cross_entropy = -tf.reduce_sum(y_ * tf.log(y_conv))
train_step = tf.train.AdamOptimizer(1e-4).minimize(cross_entropy)
correct_prediction = tf.equal(tf.argmax(y_conv, 1), tf.argmax(y_, 1))
accuracy = tf.reduce_mean(tf.cast(correct_prediction, "float"))
sess.run(tf.initialize_all_variables())

for i in range(20000):
    batch = mnist.train.next_batch(50)
    if i % 100 == 0:
        train_accuracy = accuracy.eval(feed_dict={
            x: batch[0], y_: batch[1], keep_prob: 1.0})
        print "step %d, training accuracy %.3f" % (i, train_accuracy)
    train_step.run(feed_dict={x: batch[0], y_: batch[1], keep_prob: 0.5})

print "Training finished"

print "test accuracy %.3f" % accuracy.eval(feed_dict={
    x: mnist.test.images, y_: mnist.test.labels, keep_prob: 1.0})



# 进入一个交互式 TensorFlow 会话.
# import tensorflow as tf
# sess = tf.Session()
#
# x = tf.Variable([1.0, 2.0])
# a = tf.constant([3.0, 3.0])
#
# # 使用初始化器 initializer op 的 run() 方法初始化 'x'
# x.initializer.run()
#
# # 增加一个减法 sub op, 从 'x' 减去 'a'. 运行减法 op, 输出结果
# sub = tf.sub(x, a)
# print sub.eval()
# # ==> [-2. -1.]
#
# #

#
# # 创建一个变量, 初始化为标量 0.
# state = tf.Variable(0, name="counter")
#
# # 创建一个 op, 其作用是使 state 增加 1
#
# one = tf.constant(1)
# new_value = tf.add(state, one)
# update = tf.assign(state, new_value)
#
# # 启动图后, 变量必须先经过`初始化` (init) op 初始化,
# # 首先必须增加一个`初始化` op 到图中.
# init_op = tf.initialize_all_variables()
#
# # 启动图, 运行 op
# with tf.Session() as sess:
#   # 运行 'init' op
#   sess.run(init_op)
#   # 打印 'state' 的初始值
#   print sess.run(state)
#   # 运行 op, 更新 'state', 并打印 'state'
#   for _ in range(3):
#     sess.run(update)
#     print sess.run(state)



# # Fetch
# #为了取回操作的输出内容, 可以在使用 Session 对象的 run() 调用 执行图时, 传入一些 tensor,
# # 这些 tensor 会帮助你取回结果. 在之前的例子里,
# # 我们只取回了单个节点 state, 但是你也可以取回多个 tensor:
# input1 = tf.constant(3.0)
# input2 = tf.constant(2.0)
# input3 = tf.constant(5.0)
# intermed = tf.add(input2, input3)
# mul = tf.mul(input1, intermed)
#
# with tf.Session() as sess:
#   result = sess.run([mul, intermed])
#   print result


#Feed
#上述示例在计算图中引入了 tensor, 以常量或变量的形式存储. TensorFlow 还提供了 feed 机制,
#  该机制 可以临时替代图中的任意操作中的 tensor 可以对图中任何操作提交补丁, 直接插入一个 tensor.

#feed 使用一个 tensor 值临时替换一个操作的输出结果. 你可以提供 feed 数据作为 run() 调用的参数.
#  feed 只在调用它的方法内有效, 方法结束, feed 就会消失. 最常见的用例是将某些特殊的操作指定为 "feed" 操作,
# 标记的方法是使用 tf.placeholder() 为这些操作创建占位符.
# input1 = tf.placeholder(tf.float32)
# input2 = tf.placeholder(tf.float32)
# output = tf.mul(input1, input2)
#
# with tf.Session() as sess:
#   print sess.run([output], feed_dict={input1:[7.], input2:[2.]})