clear
close
clc

data = load("features.mat");

f_table = [data.RMS_1,data.MAV_1,data.ZC_1,data.RMS_2,data.MAV_2,data.ZC_2,data.Label,data.Force];
for i = 1 : height(f_table)
    if (f_table.Label(i) == 1)
        f_table.Force(i) = 0;
    end
end

t_names = {'Ch1_RMS', 'Ch1_MAV', 'Ch1_ZC', 'Ch2_RMS', 'Ch2_MAV', 'Ch2_ZC', 'Label', 'Force/Output'};

f_table = renamevars(f_table,f_table.Properties.VariableNames,t_names);
writetable(f_table, 'dataset.csv');

