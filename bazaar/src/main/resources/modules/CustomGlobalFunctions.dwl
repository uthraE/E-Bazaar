%dw 2.0
//GLOBAL FUNCTIONS
fun sorting(incomingdata,sort) = if (sort == "hightolow") incomingdata orderBy -$.price else incomingdata orderBy $.price

fun specDetailswithId(specData) = specData map ( payload01 , indexOfPayload01 ) -> {
	code:  payload01.code,
	size: payload01.spec.size,
	"type": payload01.spec."type",
	color: payload01.spec.color
} 



