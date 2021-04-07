module ApplicationHelper

  def dauer_format(dauer)
    #Dauer im Zeitformat anzeigen
    dauer.strftime("%H:%M:%S")
  end

  def dauer_sformat(dauer)
    #Dauer im Zeitformat anzeigen
    dauer.strftime("%M:%S")
  end 

  def kdate(datum)
    #Zeit im Format tt.mm.jj anzeigen
    if (datum == NIL)
      "ohne Datum"
    else
      datum.strftime("%d.%m.%y")
    end
  end

  def mdate(datum)
    #Zeit im Format tt.mm.jj anzeigen
    if (datum == NIL)
      "ohne Datum"
    else
      datum.strftime("%d.%m.%Y")
    end
  end


  def nil_to_string(wert)
    #Wert zurückgeben und wenn nil dann leerer String
    if (wert == NIL)
      retval=""
    else
      retval=wert.to_s
    end
  end

end