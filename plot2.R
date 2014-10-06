source("clean.R")

png("plot2.png", width = 480, height = 480, units = "px", bg = "transparent")
plot(
    hpc$Date_Time,
    hpc$Global_active_power,
    xlab = "",
    ylab = "Global Active Power (kilowatts)",
    type = "l"
)
dev.off()
