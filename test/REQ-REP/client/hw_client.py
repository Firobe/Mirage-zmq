import zmq

context = zmq.Context()

#  Socket to talk to server
print("Connecting to hello world server…")
socket = context.socket(zmq.REQ)
socket.connect("tcp://localhost:5556")
for i in range(10):
    print("Sending request …" + str(i))
    socket.send(b"Hello")
    message = socket.recv()
    print("Received reply [ %s ]" % message)