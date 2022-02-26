function [format,area] = polygonArea(numSides,sideLengths)
if numSides < 3 || rem(numSides, 1) ~= 0
    format = false;
elseif (numSides == 3 || numSides == 4) && (length(sideLengths) > 2)
    format = false;
elseif numSides > 4 && length(sideLengths) > 1
    format = false;
else
    format = true;
end

if format == true
    if numSides == 3 && length(sideLengths) == 2
        area = (sideLengths(1) * sideLengths(2))/2;
    elseif numSides == 4 && length(sideLengths) == 2
        area = sideLengths(1) * sideLengths(2);
    else
        area = (numSides * sideLengths)/(4*tan(pi/numSides));
    end
else
    area = 0;
end
end