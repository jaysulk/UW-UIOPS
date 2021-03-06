function raw_cip_to_cdf(cipdatapath,outdatapath,outfilename)

%FIRST DELETE CAL AND SONIC CSV FILES FROM CIP DATETIME FOLDER

%this script extracts raw cip files from specified location and outputs
%a netcdf file

%example file paths 
%cipdatapath = '/kingair_data/pacmice16/cip/20160818/20160818143905/'
%outdatapath = '/kingair_data/pacmice16/cip/20160818/cip_20160818'
%outfilename = '20160818_cip.cdf'

obj = cip(cipdatapath,outdatapath)

unpack(obj)

cip_obj_to_netcdf(obj,[outdatapath,'/',outfilename])


end