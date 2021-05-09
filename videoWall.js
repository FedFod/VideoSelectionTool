autowatch = 1;

include("VideoPlayer.js");

var gFolder = null;
var gVideoPlayers = [];
var gWindowDim = [];

var proxy = new JitterObject("jit.proxy");
proxy.name = "my-ctx";
var proxydrawto = proxy.send("getdrawto");

var cameraProxy = new JitterObject("jit.gl.camera");
cameraProxy.drawto = proxydrawto[0];
cameraProxy.ortho = 2;

var drawto = "my-ctx";
declareattribute("drawto", null, null, 0);
scale = 0.7;
declareattribute("scale");

var node = new JitterObject("jit.gl.node", drawto);
node.capture = 1;
node.erase_color = [0, 1, 0, 1];
node.adapt = 0;

var cameraNode = new JitterObject("jit.gl.camera");
cameraNode.drawto = node.name;
cameraNode.ortho = 2;

var grid = new JitterObject("jit.gl.gridshape", node.name);
grid.poly_mode = [1,1];
grid.depth_enable = 0;
grid.layer = 100;
grid.gridmode = 0;
grid.shape = "plane";
grid.dim = [6,6];
grid.line_width = 5;
grid.color = [0,0,0,1];

var masterPlane = new JitterObject("jit.gl.videoplane", drawto);
masterPlane.texture = node.out_name;
masterPlane.transform_reset = 1;
masterPlane.scale = [scale, scale, 1];
masterPlane.enable = 1;

var physWorld = new JitterObject("jit.phys.world");
physWorld.drawto = drawto;
physWorld.dynamics = 0;
physWorld.worldbox = 0;

// var physDraw = new JitterObject("jit.gl.physdraw");
// physDraw.drawto = proxydrawto[0];
// physDraw.worldname = physWorld.name;


var ctx_lstnr = new JitterListener(proxydrawto[0], callbackfun);

function callbackfun(event) {
    if (event.eventname == ("draw") || event.eventname == ("swap")) {
        gWindowDim = proxy.send("getdim");
        for (var player in gVideoPlayers) {
            gVideoPlayers[player].playMovie();
        }
    } else if (event.eventname == "mouse") {
        if (event.args[2]) {
            var selectedID = physWorld.screenraytest(event.args.slice(0,2));
            if (selectedID !== null) {
                for (var player in gVideoPlayers) {
                    gVideoPlayers[player].checkIfSelected(selectedID[0]);
                };
            }
        }        
    }
}

function loadFolder(path) {
    gFolder = new Folder(path);
    gFolder.typelist = ["MooV", "mpg4"];

    gVideoPlayers = [];

    var index = 0;
    while (!gFolder.end) {
        if (gFolder.filename.length > 1) {
            gVideoPlayers.push(new VideoPlayer(node.name, path+gFolder.filename, index));
            index++;
        }
        gFolder.next();
    }
}