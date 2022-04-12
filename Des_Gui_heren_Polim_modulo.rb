class Appointment
    attr_reader :location, :purpose, :hour, :min
    def initialize (location, purpose, hour, min)
        @location = location
        @purpose = purpose
        @hour = hour
        @min = min
    end
end

class monthlyAppointment < Appointment
    attr_reader :day
    def initialize(location, purpose, hour, min. day)
        super(location,purpose,hour,min)
        @day = day
    end 
end 

def occurs on?(day)
     day== @day
end

def to_s
    "Reunion Mensual en #{@location} sobre #{@purpose} el dia #{@day} a la(s) #{@hour}: #{min}"
end 

puts MonthlyAppoint.new('nasa','aliens',8, 15,23)

cita_01 = monthlyAppointment.new('Disney','Mickey', 9, 45, 27)

puts cita_01.occurs_on?(27)

class DailyAppointment < Appointment 
    def occurs on?(hour.min)
        hour == @hour && min == @min
    end 

    def to_s
        "Reunion Diaria es #{@location} sobre #{@purpose} a la(s) #{@hour}: #{@min}"
    end
end

class OnetimeAppoint < Appointment
    attr_reader :day, :month, :year
    def initialize(location, purpose, hour, min, day, month, year)
        
        super(location, purpose,min)
        @day = day
        @month = month
        @year = year
    end
    
    def occurs_on?(day, month,year)
        day ==@day && month == @month && year ==@year
    end

    def to_s
        "Reunion civica en #{@location} sobre #{@purpose} el #{@day} #{@month} #{@year} a la(s) #{@hour}:#{@min}"
    end
    puts OneTimeAppointment.new('Desafio Latam','trabajo', 14,30, 4, 6,2019)
    puts DailyAppointment.new('Desafio Latam','Educacion',8, 15)
    puts MonthAppointment.new('Nasa','Aliens', 8, 15,23)
    
    
    cita_03 = OneTimeAppointment.new('Parque Ohiggins','Picnic Empresa')
    
    cita_02 = DailyAppointment.new('EstacionMapocho','Expo Anime', 11, 30)

    cita_01 = MonthlyAppointment.new('Disney','Alliens', 9, 45,27)
    
    

    puts cita_03.occurs_on? (22,8,2021)

    puts cita_02.occurs_on?(10,30)

    puts cita_01.occurs_on?(27)





