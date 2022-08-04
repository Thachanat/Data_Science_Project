import random

def rps():
    RPS_list = ["rock", "paper", "scissor"]
    win = 0
    loss = 0
    tie = 0
    while True:
        user = input("Choose rock, paper and scissor : ")
        com = random.choice(RPS_list)
        
        if user == "exit":
            print("End game")
            print(f"win : {win} loss : {loss} tie : {tie}")
            break
            
        elif user == "rock" and com == "paper":
            print(f"Computer is {com}")
            loss += 1
            print(f"win : {win} loss : {loss} tie : {tie}")

        elif user == "rock" and com == "scissor":
            print(f"Computer is {com}")
            win += 1
            print(f"win : {win} loss : {loss} tie : {tie}")

        elif user == "paper" and com == "rock":
            print(f"Computer is {com}")
            win += 1
            print(f"win : {win} loss : {loss} tie : {tie}")

        elif user == "paper" and com == "scissor":
            print(f"Computer is {com}")
            loss += 1
            print(f"win : {win} loss : {loss} tie : {tie}")

        elif user == "scissor" and com == "paper":
            print(f"Computer is {com}")
            win += 1
            print(f"win : {win} loss : {loss} tie : {tie}")

        elif user == "scissor" and com == "rock":
            print(f"Computer is {com}")
            loss += 1
            print(f"win : {win} loss : {loss} tie : {tie}")
        elif user not in RPS_list:
            print("Please select again")
        else:
            print(f"Computer is {com}")
            print("Tie")
            tie += 1
            print(f"win : {win} loss : {loss} tie : {tie}")

