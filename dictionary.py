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
def studentRole(andrewid, coursecode):
    for x in userdict[andrewid][1]:
        if x[0] == coursecode:
            return x[-1]
def addCourse(andrewid, coursecode,role):
    if len(userdict[andrewid]) == 1:
        userdict[andrewid].append([(coursecode, coursedict[coursecode],role)])
    else:
        userdict[andrewid][1].append((coursecode, coursedict[coursecode],role))
    return (userdict[andrewid])
    
def removeCourse(andrewid, coursecode, role):
    userdict[andrewid][1].remove((coursecode, coursedict[coursecode],role))
    return (userdict[andrewid])

duedict = dict()
def addDue(coursecode, dueDate, homeworkName, handinType):
    if not coursecode in duedict:
        duedict[coursecode] =[(dueDate, homeworkName, handinType)]
    else:
        duedict[coursecode].append((dueDate, homeworkName, handinType))

def getDueDate(coursecode):
    if coursecode in duedict:
        return duedict[coursecode]
    else:
        return "No Course Found"

def removeDueDate(coursecode, dueDate, homeworkName, handinType):
    duedict[coursecode].remove((dueDate, homeworkName, handinType))
    
    
addUser("xingshew","Xingsheng Wang")
print(getuserInfo("xingshew"))
addCourse("xingshew",15112,"student")
print(getuserInfo("xingshew"))
addCourse("xingshew",21259,"student")
print(getuserInfo("xingshew"))
addDue(15112, "Sept.23rd","Written1", "recitation")
addDue(15112, "Sept.24rd","Written2", "recitation")
removeCourse("xingshew",21259,"student")
print(getuserInfo("xingshew"))
print(getDueDate(15112))
removeDueDate(15112, "Sept.23rd","Written1", "recitation")
print(getDueDate(15112))
print(studentRole("xingshew",15112))

     
    