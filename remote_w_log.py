from ollama import Client

client = Client(host="<servername/ip>:11434")
prompt = input("How can I help you? ")
output = client.generate(model="llama3.2:3b", prompt=prompt)
response = output['response']

print(output['response'])
with open('log.txt', 'a') as file:
    file.write("\n\n")  # Add a line between old and new logs
    file.write(f"User: {prompt}\n")
    file.write(f"Assistant: {response}\n")
