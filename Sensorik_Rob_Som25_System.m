%%
s = tf('s'); % definiere s

%% Tiefpass
R = 1e3;
C = 1e-6;
L = 100e-6;

G_tp = 1/(1+R*C*s);
bode(G_tp)
grid on
ax = gca;
ax.FrequencyUnit = 'Hz';
% ax.PhaseMatchingEnabled = true;
%% Weitere Kurven
% figure
% nyquist(G_tp)
% figure
% nichols(G_tp)
%%
figure
G_hp = 1/(1+1/(R*C*s));
bode(G_hp)
ax = gca;
ax.FrequencyUnit = 'Hz';

G_bp = 1/(1+s*L/R+1/(s*R*C));
figure
bode(G_bp)
ax = gca;
ax.FrequencyUnit = 'Hz';