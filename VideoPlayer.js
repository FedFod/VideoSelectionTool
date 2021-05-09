function VideoPlayer(ctx, path, index) {
    this.moviePlayer = new JitterObject("jit.movie");
    this.moviePlayer.drawto = ctx;
    this.moviePlayer.output_texture = 1;
    this.moviePlayer.vol = 0;
    this.moviePlayer.automatic = 1;
    this.moviePlayer.read(path);

    this.path = path;

    post(this.moviePlayer.moviefile);
    post();

    this.scale = [0.2,0.2,1];
    this.position = [((index%5)/5)*2-1+this.scale[0], ((Math.floor(index/5)/5)*-2+1)-this.scale[1], 0];

    this.videoPlane = new JitterObject("jit.gl.videoplane", ctx);
    this.videoPlane.scale = this.scale;
    this.videoPlane.position = this.position.slice();
    this.videoPlane.preserve_aspect = 0;

    this.highLight = new JitterObject("jit.gl.gridshape", ctx);
    this.highLight.poly_mode = [1,1];
    this.highLight.depth_enable = 0;
    this.highLight.layer = 100;
    this.highLight.gridmode = 0;
    this.highLight.shape = "plane";
    this.highLight.dim = [2,2];
    this.highLight.line_width = 5;
    this.highLight.color = [1,0,0,1];
    this.highLight.scale = this.scale;
    this.highLight.position = this.position.slice();
    this.highLight.enable = 0;

    this.physBody = new JitterObject("jit.phys.body");
    this.physBody.worldname = physWorld.name;
    this.physBody.scale = [this.scale[0]*scale, this.scale[1]*scale, 0];
    this.physBody.shape = "cube";
    this.physBody.position = [this.position[0]*scale, this.position[1]*scale, 0.0];
    this.physBody.name = "movie"+index;

    this.dummyMat = new JitterMatrix(4, "char", [1,1]);

    this.playMovie = function() {
        this.moviePlayer.matrixcalc(this.dummyMat, this.dummyMat);
        this.videoPlane.texture = this.moviePlayer.texture_name;
    }

    this.checkIfSelected = function(ID) {
        if (ID === this.physBody.name) {
            this.highLight.enable = 1;
            outlet(0, this.path);
        } else {
            this.highLight.enable = 0;
        }
    }
}