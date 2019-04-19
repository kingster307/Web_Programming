/*
GAME RULES:

- The game has 2 players, playing in rounds
- In each turn, a player rolls a dice as many times as he whishes. Each result get added to his ROUND score
- BUT, if the player rolls a 1, all his ROUND score gets lost. After that, it's the next player's turn
- The player can choose to 'Hold', which means that his ROUND score gets added to his GLBAL score. After that, it's the next player's turn
- The first player to reach 100 points on GLOBAL score wins the game

*/
var scores, roundScore, activePlayer, isPlayingGame;

initGame();

//.textContent ----> simply changing out text property 
//document.querySelector('#current-0').textContent = dice; 

//innerHTML
//document.querySelector('#current-' + activePlayer).innerHTML = "<em>" + dice +  "</em>"; 

//can use querySelector to change css 
// document.querySelector('.dice').style.display = 'none';

// document.getElementById('score-0').textContent = '0';
// document.getElementById('score-1').textContent = '0';
// document.getElementById('current-0').textContent = '0';
// document.getElementById('current-1').textContent = '0';




// function btn(){
    //do something here 
// }
//btn is a callBack function since it is not calle by us && thus doesnt have ()
//() only comes after a function when we want to call/execute it
//eventListener calls btn when it detects a click 

// document.querySelector('.btn-roll').addEventListener('click',btn)


//can inline a function where btn is 
//called anonymous function ---> does have a name so cant be reused 


//pretty cool 
document.querySelector('.btn-roll').addEventListener('click',function(){
    if(isPlayingGame){
        
        var dice = Math.floor(Math.random() * 6) + 1;
        var diceDOM = document.querySelector('.dice') 
        diceDOM.style.display = 'block';
        diceDOM.src = 'dice-' + dice + '.png';
        if(dice !== 1){
         roundScore += dice;
         document.querySelector('#current-' + activePlayer).textContent = roundScore;
        }else{
         // activePlayer === 0 ? activePlayer = 1 : activePlayer = 0;
         // roundScore = 0; 
         // document.getElementById('current-0').textContent;
         // document.getElementById('current-1').textContent;
     
         // document.querySelector('.player-0-panel').classList.toggle('active');
         // document.querySelector('.player-1-panel').classList.toggle('active');
         
     
         // // document.querySelector('.player-0-panel').classList.remove('active');
         // // document.querySelector('.player-1-panel').classList.add('active');
     
         // document.querySelector('.dice').style.display = none;
     
         nextPlayer();
     
        }

    }
   
});

document.querySelector(".btn-hold").addEventListener('click', function() {
if(isPlayingGame){
scores[activePlayer] += roundScore;
document.querySelector('#score-' + activePlayer).textContent = scores[activePlayer];

if(scores[activePlayer] >= 100){
    // document.querySelector('#name-' + activePlayer).textContent = 'winner!';
    // document.querySelector('.dice').style.display = 'none';
    // document.querySelector('.player-' + activePlayer + '-panel').classList.add('winner');
    // document.querySelector('.player-' + activePlayer + '-panel').classList.remove('winner');
    document.querySelector('#name-' + activePlayer).textContent = 'Winner!';
    document.querySelector('.dice').style.display = 'none';
    document.querySelector('.player-' + activePlayer + '-panel').classList.add('winner');
    document.querySelector('.player-' + activePlayer + '-panel').classList.remove('active');
    isPlayingGame = false;

    // gamePlaying = false;

}else{
    nextPlayer();
}

// activePlayer === 0 ? activePlayer = 1 : activePlayer = 0;
// roundScore = 0; 
// document.getElementById('current-0').textContent;
// document.getElementById('current-1').textContent;

// document.querySelector('.player-0-panel').classList.toggle('active');
// document.querySelector('.player-1-panel').classList.toggle('active');


// // document.querySelector('.player-0-panel').classList.remove('active');
// // document.querySelector('.player-1-panel').classList.add('active');

// document.querySelector('.dice').style.display = none;

}
});

function nextPlayer(){
    activePlayer === 0 ? activePlayer = 1 : activePlayer = 0;
    roundScore = 0; 
    document.getElementById('current-0').textContent;
    document.getElementById('current-1').textContent;

    document.querySelector('.player-0-panel').classList.toggle('active');
    document.querySelector('.player-1-panel').classList.toggle('active');
    

    // document.querySelector('.player-0-panel').classList.remove('active');
    // document.querySelector('.player-1-panel').classList.add('active');

    document.querySelector('.dice').style.display = 'none';
}

document.querySelector('.btn-new').addEventListener('click', initGame)

function initGame(){
    scores = [0,0];
    roundScore = 0;
    activePlayer = 0; 
    document.querySelector('.dice').style.display = 'none';
    isPlayingGame = true;
    
    document.getElementById('score-0').textContent = '0';
    document.getElementById('score-1').textContent = '0';
    document.getElementById('current-0').textContent = '0';
    document.getElementById('current-1').textContent = '0';
    document.getElementById('name-0').textContent = 'Player 1';
    document.getElementById('name-1').textContent = 'Player 2';
    document.querySelector('.player-0-panel').classList.remove('winner');
    document.querySelector('.player-1-panel').classList.remove('winner');
    document.querySelector('.player-0-panel').classList.remove('active');
    document.querySelector('.player-0-panel').classList.add('active');
    document.querySelector('.player-1-panel').classList.remove('active');

}