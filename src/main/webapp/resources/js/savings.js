const newCustRadioBtn = document.getElementById("NewCustomerRadio");
const existCustRadioBtn = document.getElementById("ExistingCustomerRadio");

const newCustForm = document.getElementById("newCust_Form");
const existCustForm = document.getElementById("existCust_Form");

newCustRadioBtn.addEventListener("click", showHideDivNew);
existCustRadioBtn.addEventListener("click", showHideDivExist);

function showHideDivNew() {
    newCustForm.classList.remove('hide');
    existCustForm.classList.add('hide');
}

function showHideDivExist() {
    newCustForm.classList.add('hide');
    existCustForm.classList.remove('hide');
}

//plans

const NewCustomerSubmit = document.getElementById("NewCustomerSubmit");
const ExistingCustomerSubmit = document.getElementById("ExistingCustomerSubmit");
let savingsPoint = 0.0;

NewCustomerSubmit.addEventListener("click", function () {
   console.log("clicked newcustomer");
    if (!checkerrorNew()) {
        let age = parseInt(document.getElementById("Age").value);
        let income = parseInt(document.getElementById("Income").value);
        calculateSavingsPoint("NEW", age, income);
        console.log("Savings Point: "+savingsPoint);
        showPlans();
    }

})

ExistingCustomerSubmit.addEventListener("click", function () {
    console.log("clicked existcustomer");
    if (!checkerrorExist()) {
        let prev = parseInt(document.getElementById("LastMonthBalance").value.trim());
        let lastPrev = parseInt(document.getElementById("LastBeforeMonthBalance").value.trim());
        calculateSavingsPoint("EXIST", prev, lastPrev);
        console.log("Savings Point: "+savingsPoint);
        showPlans();
    }
})





function checkerrorNew() {
    let errorDiv = document.getElementById("ErrorMsg");
    var x = document.getElementById("Age").value.trim(); //age
    var y = document.getElementById("Income").value.trim(); //income
    if ((x == "") || (x == null)) { //check for empty value
        errorDiv.classList.remove("hide");
        return true;
    }
    else if((y == "") || (y == null)){
    	errorDiv.classList.remove("hide");
        return true;
    }
    else if (!(/^[1-9]\d*$/.test(x)) || !(/^[1-9]\d*$/.test(y))) { //Age, income should be numeric
        errorDiv.classList.remove("hide");
        return true;
    }
    else if(!(x.length<=3) || !(y.length<=10)){ //Income should be numeric and Maximum of 10 digits, age Maximum of 3 digits
        errorDiv.classList.remove("hide");
        return true;
    }
    else if(!(parseInt(x)>19) || !(parseInt(y)>0)){  //Should be greater than 0
        errorDiv.classList.remove("hide");
        return true;
    }
    errorDiv.classList.add("hide");
    return false;
}

function checkerrorExist() {
    let errorDiv = document.getElementById("ErrorMsg");
    var x = document.getElementById("LastMonthBalance").value.trim(); //age
    var y = document.getElementById("LastBeforeMonthBalance").value.trim(); //income
    if ((x == "") || (x == null)) { //check for empty value
        errorDiv.classList.remove("hide");
        return true;
    }
    else if((y == "") || (y == null)){
    	errorDiv.classList.remove("hide");
        return true;
    }
    else if (!(/^[1-9]\d*$/.test(x)) || !(/^[1-9]\d*$/.test(y))) { //Age, income should be numeric
        errorDiv.classList.remove("hide");
        return true;
    }
    else if(!(x.length<=10) || !(y.length<=10)){ //Income should be numeric and Maximum of 10 digits, age Maximum of 3 digits
        errorDiv.classList.remove("hide");
        return true;
    }
    else if(!(parseInt(x)>0) || !(parseInt(y)>0)){  //Should be greater than 0
        errorDiv.classList.remove("hide");
        return true;
    }
    errorDiv.classList.add("hide");
    return false;
}

function calculateSavingsPoint(custType, x, y) {
    switch (custType) {
        case "NEW":
            let age = x;
            let income = y;
            let agePoint = 0.0;
            let incomePoint = 0.0;


            //age point
            if (age >= 20 && age <= 30)
                agePoint = 0.25;
            else if (age >= 31 && age <= 40)
                agePoint = 0.50;
            else if (age >= 41 && age <= 50)
                agePoint = 0.75;
            else if (age > 50)
                agePoint = 1;

            //income point
            if (income < 20000)
                incomePoint = 0.25;
            else if (income >= 21000 && income <= 30000)
                incomePoint = 0.50;
            else if (income >= 31000 && income <= 40000)
                incomePoint = 0.75;
            else if (income > 40000)
                incomePoint = 1.0;
            //calculate average point
            savingsPoint = (agePoint + incomePoint) / 2;
            break;

        case "EXIST":
            let avgBalance = (x + y) / 2;

            if (avgBalance < 2000)
                savingsPoint = 0.25;
            else if (avgBalance >= 2100 && avgBalance <= 4000)
                savingsPoint = 0.50;
            else if (avgBalance >= 4100 && avgBalance <= 40000)
                savingsPoint = 0.75;
            else if (avgBalance > 41000)
                savingsPoint = 1.0;
            break;
    }
}

function showPlans(){
    //hiding other element except plans
    document.querySelector("#typeOfCust tr td").classList.add("hide");
    existCustForm.classList.add('hide');
    newCustForm.classList.add('hide');

    //show plan
    document.getElementById("plantab").classList.remove("plan_hide");
    if(savingsPoint>=0.1){
        document.getElementById("r1").classList.remove("plan_hide");
    }
    if(savingsPoint>=0.5){
        document.getElementById("r2").classList.remove("plan_hide");
    }
    if(savingsPoint>=1.0){
        document.getElementById("r3").classList.remove("plan_hide");
    }
}