function hms = sec2hms(t)
# TIME ho to
# sec2hms(69.9904)
# ans =
#    00:01:09.99
    hours = floor(t / 3600);
    t = t - hours * 3600;
    mins = floor(t / 60);
    secs = t - mins * 60;
    hms = sprintf('%02d:%02d:%05.3f', hours, mins, secs);
end