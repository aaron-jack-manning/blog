#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord)]
pub struct Date {
    pub year : i32,
    pub month : Month,
    pub day : u32,
}

#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord)]
pub enum Month {
    January,
    February,
    March,
    April,
    May,
    June,
    July,
    August,
    September,
    October,
    November,
    December,
}

impl Month {
    fn from_u32(num : u32) -> Month {
        match num {
            1 => Month::January,
            2 => Month::February,
            3 => Month::March,
            4 => Month::April,
            5 => Month::May,
            6 => Month::June,
            7 => Month::July,
            8 => Month::August,
            9 => Month::September,
            10 => Month::October,
            11 => Month::November,
            12 => Month::December,
            _ => panic!("Invalid month number.")
        }
    }
}

impl ToString for Month {
    fn to_string(&self) -> String {
        String::from(match self {
            Month::January => "January",
            Month::February => "February",
            Month::March => "March",
            Month::April => "April",
            Month::May => "May",
            Month::June => "June",
            Month::July => "July",
            Month::August => "August",
            Month::September => "September",
            Month::October => "October",
            Month::November => "November",
            Month::December => "December",
        })
    }
}

impl Date {
    fn new(year : i32, month : Month, day : u32) -> Date {
        Date {
            year,
            month,
            day,
        }
    }

    // Accepts yyyy/mm/dd format.
    pub fn parse(date : &str) -> Self {
        let components : Vec<_> = date.split("/").collect();
        Date::new(
            components[0].parse().unwrap(),
            Month::from_u32(components[1].to_string().parse().unwrap()),
            components[2].parse().unwrap()
        )
    }
}

impl ToString for Date {
    fn to_string(&self) -> String {
        format!("{} {}, {}", self.month.to_string(), self.day, self.year)
    }
}
