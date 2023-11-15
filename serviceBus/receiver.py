import os
from azure.servicebus import ServiceBusClient

CONNECTION_STR = "Endpoint=sb://devopsbychandu.servicebus.windows.net/;SharedAccessKeyName=RootManageSharedAccessKey;SharedAccessKey=V7aBTjbwmYwnc7nDF9E66PA1fWoq+ohfI+ASbDUj2kI="
QUEUE_NAME = "demo"

servicebus_client = ServiceBusClient.from_connection_string(conn_str=CONNECTION_STR)
with servicebus_client:
    receiver = servicebus_client.get_queue_receiver(queue_name=QUEUE_NAME)
    with receiver:
        received_msgs = receiver.receive_messages(max_message_count=10, max_wait_time=5)
        for msg in received_msgs:
            print(str(msg))
            receiver.complete_message(msg)

print("Receive is done.")