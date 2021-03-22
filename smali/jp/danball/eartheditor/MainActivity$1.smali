.class Ljp/danball/eartheditor/MainActivity$1;
.super Landroid/opengl/GLSurfaceView;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/danball/eartheditor/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/danball/eartheditor/MainActivity;


# direct methods
.method constructor <init>(Ljp/danball/eartheditor/MainActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Ljp/danball/eartheditor/MainActivity;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 325
    iput-object p1, p0, Ljp/danball/eartheditor/MainActivity$1;->this$0:Ljp/danball/eartheditor/MainActivity;

    invoke-direct {p0, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 328
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v0, v5, 0xff

    .line 331
    .local v0, "act":I
    const/4 v5, 0x2

    if-ne v0, v5, :cond_0

    .line 332
    const/4 v2, 0x0

    .line 333
    .local v2, "i":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 340
    .local v1, "count":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 341
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    iget-object v6, p0, Ljp/danball/eartheditor/MainActivity$1;->this$0:Ljp/danball/eartheditor/MainActivity;

    iget v6, v6, Ljp/danball/eartheditor/MainActivity;->gl_width:I

    int-to-float v6, v6

    iget-object v7, p0, Ljp/danball/eartheditor/MainActivity$1;->this$0:Ljp/danball/eartheditor/MainActivity;

    iget v7, v7, Ljp/danball/eartheditor/MainActivity;->gl_disp_w:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float v3, v5, v6

    .line 342
    .local v3, "x":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iget-object v6, p0, Ljp/danball/eartheditor/MainActivity$1;->this$0:Ljp/danball/eartheditor/MainActivity;

    iget v6, v6, Ljp/danball/eartheditor/MainActivity;->gl_height:I

    int-to-float v6, v6

    iget-object v7, p0, Ljp/danball/eartheditor/MainActivity$1;->this$0:Ljp/danball/eartheditor/MainActivity;

    iget v7, v7, Ljp/danball/eartheditor/MainActivity;->gl_disp_h:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float v4, v5, v6

    .line 343
    .local v4, "y":F
    iget-object v5, p0, Ljp/danball/eartheditor/MainActivity$1;->this$0:Ljp/danball/eartheditor/MainActivity;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    invoke-static {v5, v0, v6, v3, v4}, Ljp/danball/eartheditor/MainActivity;->access$000(Ljp/danball/eartheditor/MainActivity;IIFF)V

    .line 340
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 335
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 336
    .restart local v2    # "i":I
    add-int/lit8 v1, v2, 0x1

    .restart local v1    # "count":I
    goto :goto_0

    .line 345
    :cond_1
    const/4 v5, 0x1

    return v5
.end method
