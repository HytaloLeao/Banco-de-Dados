def obter_dados_usuario():
    nome = input('Digite seu nome: ')
    zap = input('Digite seu número de WhatsApp: ')
    while True:
        try:
            peso = float(input('Digite seu peso em kg: '))
            if peso <= 0:
                raise ValueError("O peso deve ser um número positivo.")
            break
        except ValueError as e:
            print(e)

    while True:
        try:
            altura = float(input('Digite sua altura em metros: '))
            if altura <= 0:
                raise ValueError("A altura deve ser um número positivo.")
            break
        except ValueError as e:
            print(e)
    
    return nome, zap, peso, altura

def calcular_imc(peso, altura):
    return peso / (altura ** 2)

def classificar_imc(imc):
    if imc < 18.5:
        return "Abaixo do peso"
    elif 18.5 <= imc < 24.9:
        return "Peso normal"
    elif 25 <= imc < 29.9:
        return "Sobrepeso"
    elif 30 <= imc < 34.9:
        return "Obesidade grau 1 (leve)"
    elif 35 <= imc < 39.9:
        return "Obesidade grau 2 (moderada)"
    else:
        return "Obesidade grau 3 (mórbida)"

def calcular_quantidade_agua(peso):
    return peso * 30  # Resultado em mililitros

def formatar_quantidade_agua(resultado):
    resultado_str = f'{resultado:,.0f}'
    return resultado_str.replace(',', '.')

def exibir_resultados(nome, zap, peso, altura, imc, classificacao_imc, resultado_agua):
    print(f'Nome: {nome}')
    print(f'WhatsApp: {zap}')
    print(f'Peso: {peso} kg')
    print(f'Altura: {altura} m')
    print(f'Seu IMC é: {imc:.2f}')
    print(f'Classificação do IMC: {classificacao_imc}')
    print(f'Você precisa consumir diariamente {resultado_agua} ml de água.')

def main():
    nome, zap, peso, altura = obter_dados_usuario()
    imc = calcular_imc(peso, altura)
    classificacao_imc = classificar_imc(imc)
    quantidade_agua = calcular_quantidade_agua(peso)
    quantidade_agua_formatada = formatar_quantidade_agua(quantidade_agua)
    exibir_resultados(nome, zap, peso, altura, imc, classificacao_imc, quantidade_agua_formatada)

if __name__ == "__main__":
    main()
