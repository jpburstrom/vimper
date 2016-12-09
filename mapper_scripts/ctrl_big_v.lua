function include(path)
  local info = debug.getinfo(1,'S');
  script_path = info.source:match[[^@?(.*[\/])[^\/]-$]]
  return dofile(script_path .."/../" .. path .. '.lua')
end

include('mapper')

reaper.defer(function()
doInput('<ctrl>')
doInput('V')
end)