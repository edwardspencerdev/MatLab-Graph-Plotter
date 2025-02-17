MechanicalPower = [10471.97 12566.37 14660.76 16755.16 20843.95; 16755.16 20943.95 25132.74 29321.53 33510.32]';
ElectricalPower = [11900 14350 16800 19250 24150; 19250 23800 28700 33600 38500]';
Catagories = ["Case 1" "Case 2"];

colororder(["green" "magenta"])
scatter(MechanicalPower, ElectricalPower, "x", LineWidth=2.5, SizeData=250)
hold on
fitx = linspace(0, 50000);
plot(fitx,polyval(polyfit(MechanicalPower(:,1), ElectricalPower(:,1), 1), fitx))
plot(fitx,polyval(polyfit(MechanicalPower(:,2), ElectricalPower(:,2), 1), fitx))
hold off
axis([0 50000 0 50000])
legend(Catagories, Location="southeast")
grid on
grid minor
Ticks = 0:10000:50000;
xticks(Ticks)
xticklabels(Ticks)
yticks(Ticks)
yticklabels(Ticks)
ylabel(["Electrical Power"; "Watt"])
xlabel(["Mechanical Power"; "Watt"])
title("Comparison of Power for both cases")