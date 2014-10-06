source("clean.R")

png("plot3.png", width = 480, height = 480, units = "px", bg = "transparent")
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
dev.off()
