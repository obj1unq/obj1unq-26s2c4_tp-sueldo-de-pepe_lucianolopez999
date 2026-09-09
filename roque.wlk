import pepe.*
object roque
{
            var tipoMonto = ""
            var diasAusentados = 0
            const sueldoNeto = 28000

            method bonoPorResultados(tipoDeMonto) {
                tipoMonto = tipoDeMonto
                tipoDeMonto.bonoPor(sueldoNeto)
            }

            method diasDeAusenciaTotales(diasDeAusencia)
            {
                diasAusentados = diasDeAusencia
            }

            method sueldoFinal() {
                return sueldoNeto + tipoMonto.bonoResultado() + 9000
            }
}