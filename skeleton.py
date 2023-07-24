
import pymysql
import sys

connection = pymysql.connect(host='localhost', user='root', password='root', database='project', charset='utf8mb4',
                                 cursorclass=pymysql.cursors.DictCursor)
cursor = connection.cursor()


def displayMenu():
    print("\t\tWelcome to tension free retailing \n")
    table=""

    print("Please select from 1..7 for following operations")
    choice=int(input("\n 1.Add a Product \n 2.Edit a product \n 3.Delete a Product \n 4.Display all Products \n 5.Sell a Product \n 6.Delete all Product\n 7.Display product of a type\n 8.exit\nEnter : "))

    if(choice==1):

        addProduct()

    elif(choice==2):

        updateProduct()

    elif(choice==3):

        deleteProduct()

    elif(choice==4):

        table=selectBrand()
        displayProducts(table)
        displayMenu()


    elif(choice==5):

        sellingProduct()

    elif(choice==6):

        deleteAllProduct()

    elif(choice==7):

        choose=input("Choose a type which you want to filter\n 1.WearTypr\n 2.Size\n 3.Selling Price")
        if choose=="1" or choose=="2" or choose=="3":
            pass
        else:
            choose = "1"

        if choose=="1":
            searchProductType()
        elif choose=="2":
            searchProductSize()
        else:
            searchProductSellingPrice()

    elif(choice ==8):
        decision=input("Are you sure you want to quit \nEnter y for Yes and n for No \nEnter : ")
        if(decision.lower() not in ("y","n")):
            decision="n"

        if(decision.lower()=="y"):
            print("Ok! Bye")
            sys.exit()
        else:
            displayMenu()

def getAddProductDetails():
    wearType=input("Select 1 or 2 for wear Type \n1. Formal \n2. Casual \nenter: ")

    if (wearType=="1" or wearType=="2"):
        pass
    else:
        wearType="1"

    if (wearType=="1"):
        wearType="Formal"
    else:
        wearType="Casual"

    size=input("Select number for available sizes accordingly  \n1. Small \n2. Medium \n3. Large \n4. All \nenter: ")
    if (size == "1" or size == "2" or size=="3" or size=="4" ):
        pass
    else:
        size = "2"

    if (size=="1"):
        size="Small"

    elif (size=="2"):
        size="Medium"

    elif (size=="3"):
        size="Large"

    else:
        size="All"

    totalUnits=int(input("Enter total number of pieces"))
    totalPrice=(int(input("Enter total price")))
    pricePerUnit=totalPrice/totalUnits

    if pricePerUnit<200:
        sellingPrice=pricePerUnit*2
    elif pricePerUnit>=200 and pricePerUnit<400:
        sellingPrice=pricePerUnit*4
    elif pricePerUnit>=400 and pricePerUnit<800:
        sellingPrice=pricePerUnit*5
    else:
        sellingPrice=pricePerUnit*6

    details=(wearType,size,pricePerUnit,sellingPrice,totalUnits)

    return details

def addProduct():
        table=selectBrand()
        print("Adding product of brand ", table)
        details = getAddProductDetails()
        query = "Insert into " + table + "(wearType,size,pricePerUnit,sellingPrice,totalUnits) values(%s,%s,%s,%s,%s)"
        cursor.execute(query, details)
        connection.commit()
        displayMenu()

def selectBrand():
    print("\nPlease select from 1..4 for following brand")
    brand = int(input("enter a brand of clothes \n 1.Peter England \n 2.Levis \n 3.polo \n 4.U.C.Benelton \nEnter : "))
    if (brand not in (1, 2, 3, 4)):
        brand = 1
    if (brand == 1):
        table = "peterengland"
    elif (brand == 2):
        table = "levis2"
    elif (brand == 3):
        table = "polo2"
    else:
        table = "ucbenelton"
    return table

def displayProducts(table):
    query="select * from "+table
    cursor.execute(query)
    records=cursor.fetchall()
    print("SrNo    Type    Size    Price    Selling Price    Total Units")
    for r in records:
        print(r["sr"],"   ",r["wearType"],"   ",r["size"],"   ",r["pricePerUnit"],"    ",r["sellingPrice"],"           ",r["totalUnits"])


def deleteProduct():
    try:
        table=selectBrand()
        displayProducts(table)
        id=input("Enter Sr No of the product which is to be deleted")
        query="delete from "+ table + " where sr="+id
        cursor.execute(query)
        connection.commit()
        displayProducts(table)
        displayMenu()
    except Exception as e:
        print("You have entered an invalid input, Please try again")
        displayMenu()

def deleteAllProduct():
    table = selectBrand()
    displayProducts(table)
    id = input("Are you sure to delete all the containts \n Press Y for Yes and N for No\nEnter")
    if id.lower() not in ("y","n"):
        print("Invalid input")
        displayMenu()
    else:
        if id=="n":
            print("decide what you want")
            displayMenu()
        else:
            query = "delete from " + table
            cursor.execute(query)
            displayProducts(table)
            connection.commit()
            displayMenu()

def updateProduct():
    try:
        table=selectBrand()
        displayProducts(table)
        id=input("Enter Sr No of the product which is to be updated")
        details=getAddProductDetails()
        query="update "+ table+" set  wearType = %s, size = %s, pricePerUnit = %s, sellingPrice = %s, totalUnits= %s where sr="+id;
        cursor.execute(query,details)
        connection.commit()
        displayProducts(table)
        displayMenu()
    except Exception as e:
        #print(e)
        print("You have entered an invalid input, Please try again")
        displayMenu()

def sellingProduct():
    try:
        table = selectBrand()
        displayProducts(table)
        id = input("Enter Sr No of the product which you are selling")
        units=int(input("Enter No of Units sold"))
        query1="select totalUnits from "+ table + " where sr="+id
        cursor.execute(query1)
        record=cursor.fetchall()
        result=record[0]
        actualUnit=result["totalUnits"]
        if(units<=actualUnit):
            actualUnit-=units
            query="update "+table+" set totalUnits=%s where sr="+id
            cursor.execute(query,actualUnit)
            connection.commit()
            print("Product Sucsessfully sold")
            displayProducts(table)
            displayMenu()
        else:
            print("Ohh Sorry!!\n We have only ",actualUnit," products left ")
            sellingProduct()
            displayMenu()
    except Exception as e:
        # print(e)
        print("You have entered an invalid input, Please try again")
        displayMenu()

def searchProductType():
    table=selectBrand()
    wearType = input("Select 1 or 2 for wear Type \n1. Formal \n2. Casual \nEnter ")

    if (wearType == "1" or wearType == "2"):
        pass
    else:
        wearType = "1"

    if (wearType == "1"):
        wearType = "Formal"
    else:
        wearType = "Casual"

    query = "select * from " + table+" where wearType=%s"
    cursor.execute(query,wearType)
    records = cursor.fetchall()
    print("SrNo    Type    Size    Price    Selling Price    Total Units")
    for r in records:
        print(r["sr"], "   ", r["wearType"], "   ", r["size"], "   ", r["pricePerUnit"], "    ", r["sellingPrice"],
              "           ", r["totalUnits"])
    displayMenu()

def searchProductSize():
    table=selectBrand()

    size = input("Select number for available sizes accordingly  \n1. Small \n2. Medium \n3. Large \n4. All \nenter:  ")
    if (size == "1" or size == "2" or size == "3"):
        pass
    else:
        size = "2"

    if (size == 1):
        size = "Small"

    elif (size == 2):
        size = "Medium"

    elif (size == 3):
        size = "Large"

    else:
        size = "All"
    query = "select * from " + table+" where size=%s"
    cursor.execute(query,size)
    records = cursor.fetchall()
    print("SrNo    Type    Size    Price    Selling Price    Total Units")
    for r in records:
        print(r["sr"], "   ", r["wearType"], "   ", r["size"], "   ", r["pricePerUnit"], "    ", r["sellingPrice"],
              "           ", r["totalUnits"])
    displayMenu()

def searchProductSellingPrice():
    table=selectBrand()
    sellingprice=int(input("enter selling price"))
    try:
        if sellingprice>0 :
            query="Select * from "+table+" where sellingPrice <= "+str(sellingprice)
            cursor.execute(query)
            records = cursor.fetchall()
            print("SrNo    Type    Size    Price    Selling Price    Total Units")
            for r in records:
                print(r["sr"], "     ", r["wearType"], "   ", r["size"], "   ", r["pricePerUnit"], "    ", r["sellingPrice"],
                  "           ", r["totalUnits"])
            displayMenu()
        else:
            print("Sorry, Np Products under that price")
    except Exception as e:
        print("Invalid Input Entered, Try again later")
        displayMenu()



displayMenu()


    



    


