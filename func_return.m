function func_return(param)
    fprintf('Nama saya %s!\n', param)
    return
    callname(param)
end

function callname(param)
    fprintf('Nama saya %s!\n', param)
end
