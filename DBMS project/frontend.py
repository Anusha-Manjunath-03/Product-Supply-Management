import psycopg2
from tkinter import messagebox

    
def View():
    global displayField
    displayField.destroy()
    displayField = Text(frame,font = display_style,width=90,background='black')
    displayField.grid(row=3,pady=2)
    
    conn = psycopg2.connect(user="postgres",
                                     password="1234",
                                     host="::1",
                                     port="5432",
                                     database="productsupply")
    try:
        query_cursor = conn.cursor()
        query = textField.get()
        if(query == ''):
            displayField.config(bg='white')
            messagebox.showerror('Error','Please enter the query that needs to be displayed')
        query_cursor.execute(query)
        rows = query_cursor.fetchall()
        
        display_attr(query_cursor)
        display_val(rows)
        
    except psycopg2.ProgrammingError:
        pass
    
    if query_cursor.description is None:
            displayField.config(bg='white')
            messagebox.showinfo('Info','Check the entered query')
            
    conn.close()
    
def display_attr(query_cursor):
    query_attr = [i[0] for i in query_cursor.description]
    for i in range(len(query_attr)):
        entryField = Entry(displayField,width=20,font=('Arial',16,'bold'),state='disabled')
        entryField.config(state='normal')
        entryField.grid(row=0,column=i)
        entryField.insert(END,query_attr[i])
        entryField.config(state='disabled')
        
def display_val(rows):
    total_attr = len(rows)
    total_values = len(rows[0])
    for i in range(0,total_attr):
        for j in range(total_values):
            entryField = Entry(displayField,width=20,font=('Arial',16),state='disabled')
            entryField.config(state='normal')
            entryField.grid(row=i+1,column=j)
            entryField.insert(END,rows[i][j])
            entryField.config(state='disabled')



from tkinter import *

root = Tk()

style=('Verdana',20,'bold','italic')
text_style=('Verdana',16)
display_style=('Arial',14)

root.title('Product Supply Database')
root.geometry('1200x1200')
frame = Frame(root)
frame.config(bg='beige')

search_label = Label(frame, text='Search by Query: ',font=style)
search_label.grid()

textField = Entry(frame,font = text_style,justify = CENTER,width=40)
textField.grid(row=1)

displayField = Text(frame,font = display_style,width=90)
displayField.grid(row=3,pady=2)

display_query_btn = Button(frame, text='Display',command=View, bd='5',height=2,width=8,font=('bold'))
display_query_btn.grid(row=2,pady=60)


frame.grid(row=0,column=0,sticky='NESW')
frame.grid_columnconfigure(0,weight=1)
frame.grid_rowconfigure(1,weight=1)

root.grid_columnconfigure(0,weight=1)
root.grid_rowconfigure(0,weight=1)

root.mainloop()