
if(local(_this select 0))then
{
    (_this select 1) execVM (_this select 2) ;
}else{
    CodeBroadcast = _this;
    publicVariable "CodeBroadcast";
};