const color="Green";

switch(color){
    case 'Red':{
      console.log('STOP');
      break;
    }
    case 'Yellow':{
        console.log('Get Ready');
        break; 
    }
    case 'Green':{
        console.log('GO');
        break;
    }
    default:{
        console.log('Invaid Signal Color ');
        break;
    }
}