.class Ljp/danball/eartheditor/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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

.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Ljp/danball/eartheditor/MainActivity;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Ljp/danball/eartheditor/MainActivity;

    .prologue
    .line 371
    iput-object p1, p0, Ljp/danball/eartheditor/MainActivity$2;->this$0:Ljp/danball/eartheditor/MainActivity;

    iput-object p2, p0, Ljp/danball/eartheditor/MainActivity$2;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 374
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity$2;->this$0:Ljp/danball/eartheditor/MainActivity;

    invoke-static {v0}, Ljp/danball/eartheditor/MainActivity;->access$100(Ljp/danball/eartheditor/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v1, Ljp/danball/eartheditor/MainActivity$2$1;

    invoke-direct {v1, p0}, Ljp/danball/eartheditor/MainActivity$2$1;-><init>(Ljp/danball/eartheditor/MainActivity$2;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 380
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity$2;->this$0:Ljp/danball/eartheditor/MainActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ljp/danball/eartheditor/MainActivity;->gl_pause:Z

    .line 381
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 383
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 387
    return-void
.end method
