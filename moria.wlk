import pepe.*
object moria
{
            var tipoMonto = ""
            var trabajaDe  = ""
            var diasAusentados = 0
            var sueldoNeto = 0
            
            method trabajaDe(trabajo) {
                trabajaDe = trabajo
                sueldoNeto = trabajo.neto()
            }

            method bonoPorResultados(tipoDeMonto) {
                tipoMonto = tipoDeMonto
                tipoDeMonto.bonoPor(sueldoNeto)
            }

            method diasDeAusenciaTotales(diasDeAusencia)
            {
                diasAusentados = diasDeAusencia
            }

            method trabajoAMedioTiempo() {
                sueldoNeto = medioTiempo.categoriaBase(trabajaDe)
            }

            method sueldoDeMoria()
            {
                return sueldoNeto * 1.3
            }

            method sueldoFinal() {
                return self.sueldoDeMoria() + tipoMonto.bonoResultado() 
            }
}