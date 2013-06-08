
function Validate_Process() {

    var blnChk = true;

    if (blnChk) {
        blnChk = validate_MartialStatus();
    }

    if (blnChk) {
        blnChk = validate_Caste();
    }

    if (blnChk) {
        blnChk = validate_BodyType();
    }

    if (blnChk) {
        blnChk = validate_Complextion();
    }

    if (blnChk) {
        blnChk = validate_PhysicalStatus();
    }

    if (blnChk) {
        blnChk = validate_EmployedIn();
    }

    if (blnChk) {
        blnChk = validate_Income();
    }

    if (blnChk) {
        blnChk = validate_Food();
    }


    if (blnChk) {
        blnChk = validate_Smoking();
    }

    if (blnChk) {
        blnChk = validate_Drinking();
    }
    if (blnChk) {
        blnChk = validate_Chevvai();
    }


    if (blnChk) {
        blnChk = validate_FamilyType();
    }

    if (blnChk) {
        blnChk = validate_FamilyValues();
    }

    if (blnChk) {
        blnChk = validate_FamilyStatus();
    }

    if (blnChk) {
        blnChk = validate_HieghtEducation();
    }

    if (blnChk) {
        blnChk = validate_Occupation();
    }

   
    

    return blnChk;




  // validator_SubCaste();
//    validator_State();
//    validator_city();
//    validator_HieghtEducation();
//    validator_Occupation();
  

}




// javascript for MartialStatus


    function validate_MartialStatus() {
        var radios = document.getElementsByName("MartialStatus");
        var j = 0;

        for (var i = 0; i < radios.length; i++) {
            if (radios.item(i).checked == false) {
                j++;
            }


        }

        if (j == radios.length) {
            alert("Please select the MartialStatus");
            return false;
        }
        else {
            return true;
        }
        return true;
    }


    // javascript for Caste

    function validate_Caste() {
        var radios = document.getElementsByName("Caste");
        var j = 0;

        for (var i = 0; i < radios.length; i++) {
            if (radios.item(i).checked == false) {
                j++;
            }


        }

        if (j == radios.length) {
            alert("Please select the Caste");
            return false;
        }
        else {
            return true;
        }
        return true;
    }

    // javascript for BodyType

    function validate_BodyType() {
        var radios = document.getElementsByName("BodyType");
        var j = 0;

        for (var i = 0; i < radios.length; i++) {
            if (radios.item(i).checked == false) {
                j++;
            }


        }

        if (j == radios.length) {
            alert("Please select the BodyType");
            return false;
        }
        else {
            return true;
        }
        return true;
    }

    // javascript for Complextion

    function validate_Complextion() {
        var radios = document.getElementsByName("Complextion");
        var j = 0;

        for (var i = 0; i < radios.length; i++) {
            if (radios.item(i).checked == false) {
                j++;
            }


        }

        if (j == radios.length) {
            alert("Please select the Complextion");
            return false;
        }
        else {
            return true;
        }
        return true;
    }


    // javascript for PhysicalStatus

    function validate_PhysicalStatus() {
        var radios = document.getElementsByName("PhysicalStatus");
        var j = 0;

        for (var i = 0; i < radios.length; i++) {
            if (radios.item(i).checked == false) {
                j++;
            }


        }

        if (j == radios.length) {
            alert("Please select the PhysicalStatus");
            return false;
        }
        else {
            return true;
        }
        return true;
    }

    // javascript for EmployedIn

    function validate_EmployedIn() {
        var radios = document.getElementsByName("EmployedIn");
        var j = 0;

        for (var i = 0; i < radios.length; i++) {
            if (radios.item(i).checked == false) {
                j++;
            }


        }

        if (j == radios.length) {
            alert("Please select the EmployedIn");
            return false;
        }
        else {
            return true;
        }
        return true;
    }

    // javascript for Income

    function validate_Income() {
        var radios = document.getElementsByName("Income");
        var j = 0;

        for (var i = 0; i < radios.length; i++) {
            if (radios.item(i).checked == false) {
                j++;
            }


        }

        if (j == radios.length) {
            alert("Please select the IncomeType");
            return false;
        }
        else {
            return true;
        }
        return true;
    }


    // javascript for Food

    function validate_Food() {
        var radios = document.getElementsByName("Food");
        var j = 0;

        for (var i = 0; i < radios.length; i++) {
            if (radios.item(i).checked == false) {
                j++;
            }


        }

        if (j == radios.length) {
            alert("Please select the Food");
            return false;
        }
        else {
            return true;
        }
        return true;
    }

    // javascript for Smoking

    function validate_Smoking() {
        var radios = document.getElementsByName("Smoking");
        var j = 0;

        for (var i = 0; i < radios.length; i++) {
            if (radios.item(i).checked == false) {
                j++;
            }


        }

        if (j == radios.length) {
            alert("Please select the Smoking");
            return false;
        }
        else {
            return true;
        }
        return true;
    }

    // javascript for Drinking

    function validate_Drinking() {
        var radios = document.getElementsByName("Drinking");
        var j = 0;

        for (var i = 0; i < radios.length; i++) {
            if (radios.item(i).checked == false) {
                j++;
            }


        }

        if (j == radios.length) {
            alert("Please select the Drinking");
            return false;
        }
        else {
            return true;
        }
        return true;
    }


    // javascript for Chevvai

    function validate_Chevvai() {
        var radios = document.getElementsByName("Chevvai");
        var j = 0;

        for (var i = 0; i < radios.length; i++) {
            if (radios.item(i).checked == false) {
                j++;
            }


        }

        if (j == radios.length) {
            alert("Please select the Chevvai");
            return false;
        }
        else {
            return true;
        }
        return true;
    }
    


    //javascript for FamilyType

    function validate_FamilyType() {
        var radios = document.getElementsByName("FamilyType");
        var j = 0;

        for (var i = 0; i < radios.length; i++) {
            if (radios.item(i).checked == false) {
                j++;
            }


        }

        if (j == radios.length) {
            alert("Please select the FamilyType");
            return false;
        }
        else {
            return true;
        }
        return true;
    }



    //javascript for FamilyValues

   function validate_FamilyValues() {
        var radios = document.getElementsByName("FamilyValues");
        var j = 0;

        for (var i = 0; i < radios.length; i++) {
            if (radios.item(i).checked == false) {
                j++;
            }


        }

        if (j == radios.length) {
            alert("Please select the FamilyValues");
            return false;
        }
        else {
            return true;
        }
        return true;
    }


    //javascript for FamilyStatus

    function validate_FamilyStatus() {
        var radios = document.getElementsByName("FamilyStatus");
        var j = 0;

        for (var i = 0; i < radios.length; i++) {
            if (radios.item(i).checked == false) {
                j++;
            }


        }

        if (j == radios.length) {
            alert("Please select the FamilyStatus");
            return false;
        }
        else {
            return true;
        }
        return true;
    }




    //javascript for SubCaste


    function validator_SubCaste() {
        if (DDL_SubCaste[DDL_SubCaste.selectedIndex].value == 0) {
            alert("Please select SubCaste");

            return false;
        }

    }



    //javascript for State


    function validator_State() {

//        var coun = document.getElementById("Lbl_CountryName");
//        if (coun.value =="India") {
//            alert("hi india");
//            return true;
//        }
//        else {
//            alert("hi aust")
//        }


        if (DDL_State[DDL_State.selectedIndex].value == 0) {
            alert("Please select State");

            return false;
        }

    }



    //javascript for city

    function validator_city() {
        if (DDL_City[DDL_City.selectedIndex].value == 0) {
            alert("Please select City");
            document.getElementById("DDL_City").focus();
            return false;
            
        }
        return true;
    }



    //javascript for HieghtEducation

    function validator_HieghtEducation() {
        if (DDL_HighestEdu[DDL_HighestEdu.selectedIndex].value == 0) {
            alert("Please select HieghtEducation");
            document.getElementById("DDL_HighestEdu").focus();
            return false;
            
        }
        return true;
    }



    //javascript for Occupation

    function validator_Occupation() {
        if (DDL_Occupation[DDL_Occupation.selectedIndex].value == 0) {
            alert("Please select Occupation");
            document.getElementById("DDL_Occupation").focus();
            return false;
           
        }
        return true;
    }



  


  

  





