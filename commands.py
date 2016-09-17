coursedict = {15112: "Fundamentals of Programming and Computer Science",
            18100: "Introduction to Electrical and Computer Engineering",
            21259: "Calculus in Three Dimensions",
            76101: "Interpretation and Argument",
            21120: "Differential and Integral Calculus",
            21122: "Integration and Approximation",
            33141: "Physics I for Engineering Students"}

userdict = dict()         
def addUser(andrewid,username):
    userdict[andrewid] = [username]
    
def getuserInfo(andrewid):
    if andrewid in userdict:
        return (userdict[andrewid])
    else:
        return "No user found!"
        
def addcourse(andrewid, coursecode):
    if len(userdict[andrewid]) == 1:
        userdict[andrewid].append([(coursecode, coursedict[coursecode])])
    else:
        userdict[andrewid][1].append((coursecode, coursedict[coursecode]))
    return (userdict[andrewid])
    
def removeCourse(andrewid, coursecode):
    userdict[andrewid][1].remove((coursecode, coursedict[coursecode]))
    return (userdict[andrewid])

duedict = dict()
def addDue(coursecode, dueDate, homeworkName, handinType):
    duedict[coursecode] += [(dueDate, homeworkName, handinType)]

def getduedate(coursecode):
    if coursecode in duedict:
        return duedict[coursecode]
    else:
        return "No Course found!"
    
addUser("xingshew","Xingsheng Wang")
print(getuserInfo("xingshew"))
addcourse("xingshew",15112)
print(getuserInfo("xingshew"))
addcourse("xingshew",21259)
print(getuserInfo("xingshew"))
addDue(15112, "Sept.23rd","Written1", "recitation")
print(getduedate("xingshew"))

     
    