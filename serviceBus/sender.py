import os
from azure.servicebus import ServiceBusClient, ServiceBusMessage

# CONNECTION_STR = os.environ["SERVICEBUS_CONN_STR"]
# QUEUE_NAME = os.environ["QUEUE_NAME"]

CONNECTION_STR = "Endpoint=sb://devopsbychandu.servicebus.windows.net/;SharedAccessKeyName=RootManageSharedAccessKey;SharedAccessKey=ZRvabYDIIze9AXFdGoQeYHOnxhoLGP2pG+ASbKvT2i0="
QUEUE_NAME = "demoqueue"


def send_single_message(sender):
    message = ServiceBusMessage("Single Message")
    sender.send_messages(message)

def send_a_list_of_messages(sender):
    messages = [ServiceBusMessage("Message in list") for _ in range(10)]
    sender.send_messages(messages)

def send_batch_message(sender):
    batch_message = sender.create_message_batch()
    for _ in range(10):
        try:
            batch_message.add_message(ServiceBusMessage("Message inside a ServiceBusMessageBatch"))
        except ValueError:
            break
    sender.send_messages(batch_message)

servicebus_client = ServiceBusClient.from_connection_string(conn_str=CONNECTION_STR, logging_enable=True)
with servicebus_client:
    sender = servicebus_client.get_queue_sender(queue_name=QUEUE_NAME)
    with sender:
        send_single_message(sender)
        send_a_list_of_messages(sender)
        send_batch_message(sender)

print("Send messages are completed.")