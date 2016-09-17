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
        return (andrewid, userdict[andrewid])
    else:
        return "No user found!"
        
def addcourse(andrewid, coursecode):
    userdict[andrewid] += [coursecode, coursedict[coursecode]]
    return (userdict[andrewid])
    
addUser("xingshew", "Xingsheng Wang")
addcourse("xingshew", 15112)
addcourse("xingshew", 18100)
addcourse("xingshew", 21259)
print(getuserInfo("xingshew"))
    