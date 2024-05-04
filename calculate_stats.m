function [mean_val, median_val, mode_val] = calculate_stats(data)
    mean_val = mean(data);
    median_val = median(data);
    mode_val = mode(data);
endfunction

