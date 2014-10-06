source("clean.R")

png("plot4.png", width = 480, height = 480, units = "px", bg = "transparent")
par(mfrow = c(2, 2))
plot(
    hpc$Date_Time,
    hpc$Global_active_power,
    xlab = "",
    ylab = "Global Active Power",
    type = "l"
)
plot(
    hpc$Date_Time,
    hpc$Voltage,
    xlab = "datetime",
    ylab = "Voltage",
    type = "l"
)
plot(
    hpc$Date_Time,
    hpc$Sub_metering_1,
    xlab = "",
    ylab = "Energy sub metering",
    type = "l",
    col = "black"
)
lines(
    hpc$Date_Time,
    hpc$Sub_metering_2,
    col = "red"
)
lines(
    hpc$Date_Time,
    hpc$Sub_metering_3,
    col = "blue"
)
legend(
    "topright",
    c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
    col = c("black", "red", "blue"),
    lty = 1,
    lwd = 3
)
plot(
    hpc$Date_Time,
    hpc$Global_reactive_power,
    xlab = "datetime",
    ylab = "Global_reactive_power",
    type = "l"
)
dev.off()
