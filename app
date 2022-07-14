from random import randint
import string
import time

def remove_punctuation(x):
    table = str.maketrans({key: None for key in string.punctuation})
    return x.translate(table)

#Greeting
greetings = ["Hello!", "Hey!", "Hey there!", "Hi!", "Hi, how you doing?"]
print(greetings[randint(0, len(greetings)-1)])

answer_processed = " yes "

while answer_processed.lower().find(" yes ") > -1 or answer_processed.lower().find(" y ") > -1 or answer_processed.lower().find(" yeah ") > -1:

  #Ensure what they are asking for is included.
  contains = False
  reply = input("What would you like to recycle today?")
  while contains == False:
    reply_processed = " " + remove_punctuation(reply).lower() + " "
    recyclables = ["battery", "batteries", "computer", "phone", "laptop", "desktop", "cellphone", "electronic", "electronics", "aluminum", "can", "cans", "soda", "pop", "toilet bowl cleaner", "shower cleaner", "tile cleaner", "carpet cleaner", "rust remover", "pesticides", "herbicides", "fertilizer", "insecticides", "insecticide", "fertilizers", "herbicide", "pesticide"]
    #batteries = 0, 2
    #electronic = 2 - 9
    #aluminum cans = 9 - 14
    #household chemicals =  14 - 19
    #garden chemicals = 19 - 27
    recyclables_processed = " "

    for a in range(0, len(recyclables)-1):
      recyclables_processed = " " + recyclables[a] + " "
      contains = contains or not -1 == reply_processed.find(recyclables_processed)

    if contains == False:
      print("Sorry, we don't have info on how to recycle that.")
      time.sleep(1)
      reply = input("What else would you like to recycle today?").lower()

  #Batteries

  contains = False
  for a in range(0,2):
      recyclables_processed = " " + recyclables[a] + " "
      contains = contains or not -1 == reply_processed.find(recyclables_processed)
  if contains == True:
    second_reply = input("What brand is your battery?").lower()
    contains = False
    battery_brands = ["duracell","energizer","rayovac","panasonic"]
    if second_reply in battery_brands:
        print("That's an alkaline battery. All alkaline batteries can be thrown away normally unless they are rechargable.")
    else:
        print("You can drop your battery off at a local Household Hazardous Waste/E-Waste Collection Center.")
        time.sleep(2)
        print("Go to www.call2recycle.org to find a location near you.")
        time.sleep(1)

  #Electronics

  electronics = ["computer", "phone", "laptop", "desktop", "cellphone", "device", "electronic"]

  contains = False
  for a in range(2,9):
      recyclables_processed = " " + recyclables[a] + " "
      contains = contains or not -1 == reply_processed.find(recyclables_processed)
  if contains == True:
    print("All old electronics can be disposed of at your local recycler.")
    time.sleep(3)
    print("Many non-profit organizations can recycle them too.")
    time.sleep(3)
    print("Call2Recycle also has drop-off locations for cell phones throughout the USA.")
    time.sleep(2)
    print("Go to www.call2recycle.org to find a location near you.")
    time.sleep(1)

  #Aluminum Cans

  contains = False
  for a in range(9,14):
      recyclables_processed = " " + recyclables[a] + " "
      contains = contains or not -1 == reply_processed.find(recyclables_processed)
  if contains == True:
     print("Aluminum cans are infinitely recyclable! They can be back on shelves within 60 days of recycling.")
     time.sleep(3)
     print("Use Earth911.com's Recycling Search to find the nearest drop-off center.")
     time.sleep(2)
     print("Cans are also typically available for pickup alongside other recyclables and your local waste pick-up program. :)")
     time.sleep(1)

  #Household chemicals

  contains = False
  for a in range(14,19):
      recyclables_processed = " " + recyclables[a] + " "
      contains = contains or not -1 == reply_processed.find(recyclables_processed)
  if contains == True:
      print("Dispose of household chemicals the same way they are used, such as down the drain.")

  #Garden chemicals

  contains = False
  for a in range(19,27):
      recyclables_processed = " " + recyclables[a] + " "
      contains = contains or not -1 == reply_processed.find(recyclables_processed)
  if contains == True:
          print("You can drop off your garden chemicals at a local Household Hazardous Waste Center.")

  answer = input("Would you like to recycle anything else?")
  answer_processed = " " + remove_punctuation(answer) + " "
