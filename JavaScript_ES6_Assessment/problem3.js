class Student{

    constructor(studentName,marks){
        this.studentName=studentName;
        this.marks=marks;
    }

    addMarks(...marks){
      for(let mark of marks){
        if(mark>=0 && mark<=100){
            this.marks.push(mark);
        }
        else{
            console.log(`Invalid Mark Entered..`);
        }
    }
       
    }
     getAverage(){
       let total= this.marks.reduce((sum,mark)=>{
           return sum+mark;

        },0)
           let total_subjects=this.marks.length;

           console.log(`Total Subjects:${total_subjects}`);

            let avg=total/(total_subjects);

            console.log(`Average marks:${avg}`);
            
            return avg;
        }

        getGrade(){
            for(let mark of this.marks){
                if(mark>90){
                    console.log("Grade-A");
                }
                else if(mark>75){
                    console.log("Grade-B");
                }

                else if(mark>50){
                    console.log("Grade-C");
                }
                else{
                    console.log("Fail");
                }
            }
        }

        getGrade2(marks){
         if(marks>90){
                    console.log("Grade-A");
                }
                else if(marks>75){
                    console.log("Grade-B");
                }

                else if(marks>50){
                    console.log("Grade-C");
                }
                else{
                    console.log("Fail");
                }
        }
     }
       
     let student=new Student("Gopi Krishna",[80,74,85,92]);
     //student.getGrade();

     student.addMarks(94,66);
     
     let average=student.getAverage();

     student.getGrade2(average);
