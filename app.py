from flask import Flask, render_template, request, session, flash
import mysql.connector
import os

app = Flask(__name__)

conn = mysql.connector.connect(host="localhost", user="root", password="root", database="project")
cursor = conn.cursor()


# Home
@app.route('/')
def login():
    return render_template('admin.html')


# if Logged_in
@app.route('/login_validation', methods=['post'])
def login_validation():
    username = request.form.get('username')
    password = request.form.get('password')

    cursor.execute("""select password from aa where username like '{}' """.format(username))
    passDb=""

    us = cursor.fetchall()
    for u in us:
        passDb=u[0]

    if len(us) > 0:
      #  passDB = us[0]
        if (password == passDb):
          return render_template('index.html')
        else:
          return render_template('admin.html', info='Incorrect Password for given User ')
    else:
        return render_template('admin.html', info='Invalid User')


@app.route('/index', methods=['post', 'get'])
def Add():
    return render_template('index.html')


@app.route('/add_user', methods=['post', 'get'])
def add_users():
    return render_template('register.html')


# add member
@app.route('/addbb', methods=['post'])
def add_user():
    id = request.form.get('pid')
    brand_name = request.form.get('brand_name')
    size = request.form.get('size')
    contact_number = request.form.get('contact_number')
    retailing_cost = request.form.get('retailng_cost')
    retailer_name = request.form.get('retailer_name')
    dateB = request.form.get('date')
    # password=request.form.get('upassword')
    cursor.execute(
        "insert into bb(id,brand_name,size,contact_number,retailing_cost,retailer_name,dateB) values('{}','{}','{}','{}','{}','{}','{}')".format(
            id, brand_name, size, contact_number, retailing_cost, retailer_name, dateB))
    conn.commit()
    return render_template("register.html")


# all user detail show
@app.route("/alluser")
def alldata():
    cursor.execute("select * from bb")
    data = cursor.fetchall()
    return render_template("alldata.html", elist=data)


# Delete Employee
@app.route('/delete', methods=['post', 'get'])
def delete():
    return render_template('curd.html')


@app.route("/delete_user", methods=['post'])
def delete_user():
    brand_name = request.form.get('brand_name')
    cursor.execute("""delete from bb where brand_name like '{}'""".format(brand_name))
    conn.commit()
    return render_template('index.html')


@app.route('/update', methods=['post', 'get'])
def update():
    return render_template('update.html')


@app.route("/updatebb", methods=["POST"])
def update_bb():
    id = request.form["pid"]
    brand_name = request.form["brand_name"]
    size = request.form["size"]
    contact_number = request.form["contact_number"]
    retailing_cost = request.form["retailng_cost"]
    retailer_name = request.form["retailer_name"]
    dateB = request.form["date"]
    cursor.execute(
        "update bb set brand_name='{}',size='{}',contact_number='{}',retailing_cost='{}',retailer_name='{}',dateB='{}' where id = {}".format(
            brand_name, size, contact_number, retailing_cost, retailer_name, dateB, id))
    return render_template('index.html')

    # Run App


if __name__ == "__main__":
    app.run(debug=True)
