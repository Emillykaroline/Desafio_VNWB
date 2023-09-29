programa {
  funcao inicio() {
    programa {    
  inclua biblioteca Util --> u
  cadeia nomes[5] = {"Roger", "Jordan", "Deise", "Willian", "Rafael"}
  cadeia nome, nomesorteado, novamente,coracao 
  inteiro vidas
  logico continue

  funcao vidaperdida() {
    coracao = ""
    para(inteiro i = 1 i <= vidas i++){
      coracao += " \u2764 "
    }
  }

  funcao teste() {
    vidaperdida()
    escreva("[Vida: ", vidas, coracao, "]\n")
    escreva("------------------------------------------------------\n")
    escreva("O MONSTRO ESTÁ VINDO ATRÁS DE VOCÊ!!!!!\n")
    escreva("------------------------------------------------------\n")
    escreva("Existe uma pessoa certa que pode ajudar você a se esconder dele.\n")
    escreva("Opções: ", nomes,"\n")
    
    escreva("\nDigite um nome: ")
    leia(nome)
    nomesorteado = nomes[u.sorteia(0, 4)]
  }

  funcao jogoInicial() {
    vidas = 10
    continue = verdadeiro
    
    enquanto(continue) {
      teste()
      se(nome == nomesorteado) {
        escreva("Você acertou, ",nomesorteado," vai te ajudar. \n")
        u.aguarde(3000)
        continue = falso
      } senao {
        vidas = vidas - 1
        vidaperdida()
        escreva("Você errou! A pessoa ideal para lhe salvar era: ", nomesorteado)
        escreva("\nPressione qualquer tecla para tentar novamente: ")
        leia(novamente)
        limpa()
        se(vidas <= 0) {
          continue = verdadeiro
          escreva("GAME OVER \n")
          escreva("------------------------------------------------------\n")
          escreva("Próximo Jogo !!!!!\n")
          escreva("------------------------------------------------------\n")
        }
      }  
    } 
  }

  funcao cabecalhoFibonacci() {
    inteiro contador = 1
    inteiro primeiro = 0
    inteiro segundo = 1
    inteiro terceiro

    vidaperdida()
    escreva("[Vida: ", vidas, coracao, "]\n")
    escreva("------------------------------------------------------\n")
    escreva("Com base na sequência de Fibonacci: \n")
    escreva(primeiro," - ")
    escreva(segundo)
    enquanto (contador <= 13) {
      terceiro = segundo + primeiro
      escreva(" - ", terceiro)
      primeiro = segundo
      segundo = terceiro
      contador = contador + 1
    }
  }

  funcao jogoFibonacci() {
    inteiro numero
    vidas = 10

    enquanto (vidas > 0) {
      cabecalhoFibonacci()
      escreva("\nQual será o valor do próximo termo da sequência? ")
      leia(numero)

      se (numero == 610) {
        escreva("\nVocê acertou!\n")
        u.aguarde(2500)
        limpa()
        pare
      } senao {
        vidas = vidas - 1
        vidaperdida()
        escreva("Resposta errada! Tente novamente.\n")
        u.aguarde(500)
        limpa()
      }
    }

    se (vidas <= 0) {
      escreva("GAME OVER!\n")
    }
  }

  funcao comecoCalculadora() {
    vidaperdida()
    escreva("[Vida: ", vidas, coracao, "]\n")
    escreva("\n==============================")
    escreva("\nCalcule o mais rápido possível")
    escreva("\n==============================")
  }

  funcao jogoCalculadora() {
    inteiro num1, num2, resultado
    inteiro opcao

    vidas = 10

    faca {
      comecoCalculadora()
      escreva("\nEscolha a Operação\n")
      escreva("\n[1] Soma\n")
      escreva("\n[2] Multiplicação\n")
      leia(opcao)
      limpa()
    } enquanto(opcao > 2)

    num1 = u.sorteia(1, 50)
    num2 = u.sorteia(1, 50)

    escolha(opcao) {
      caso 1: 
        limpa()
        escreva("[Vida: ", vidas, coracao, "]\n")
        escreva("Número 1: ", num1, "  Número 2: ", num2)
        escreva("\nDigite o resultado da soma: ")
        leia(resultado)

        se (resultado == num1 + num2) {
          escreva("\nVocê Acertou!\n")
          u.aguarde(2500)
          limpa()
        } senao {
          vidas = vidas - 1
          vidaperdida()
          escreva("Resposta errada! Tente novamente.\n")
          u.aguarde(500)
          limpa()

          se (vidas == 0) {
            escreva("GAME OVER!\n")
          }
        }
      caso 2:
        limpa()
        escreva("[Vida: ", vidas, coracao, "]\n")
        escreva("Número 1: ", num1, "  Número 2: ", num2)
        escreva("\nDigite o resultado da multiplicação: ")
        leia(resultado)

        se (resultado == num1 * num2) {
          escreva("\nVocê Acertou!\n")
          u.aguarde(2500)
          limpa()
        } senao {
          vidas = vidas - 1
          vidaperdida()
          escreva("Resposta errada! Tente novamente.\n")
          u.aguarde(500)
          limpa()

          se (vidas == 0) {
            escreva("GAME OVER!\n")
          }
        }
      caso contrario:
        escreva("\nGAME OVER\n")
    }
  }

  funcao inicio() { 
    escreva("Bem-vindo ao Desafio Puzzle (=!\n")
    u.aguarde(2000)
    jogoInicial()
    jogoFibonacci()
    jogoCalculadora()
  }
}

  }
}
