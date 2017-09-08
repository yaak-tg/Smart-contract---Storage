pragma solidity ^0.4.4;


/*
Este contrato vai Salvar nome e score de jogadores.
1- crie um mapping (dicionário) Chamado PersonScores, que vai guardar uma string (nome do jogador) e um int (score);
2 - Crie uma função AddPersonScore que:

  a. recebe dois parametros: uma string name e um int startingScore;
  b. Verifica se o jogador tem score maior que 0;
  c. Atribui o score ao jogador

3 - Crie uma função para verificar o score que:
  a. Recebe uma string name e retorna um int(score);

mapping é um dicionário
*/
contract ScoreStore{
    mapping(string => int) PersonScores;
    function AddPersonScore(string name, int startingScore){
      if (PersonScores[name]>0){
        throw;
      }
      else{
        PersonScores[name] = startingScore;
      }

    }

    function GetScores(string name) returns (int){
      return PersonScores[name];
    }

}
