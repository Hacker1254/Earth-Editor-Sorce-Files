.class Ljp/danball/eartheditor/AdBanner$3;
.super Ljava/lang/Object;
.source "AdBanner.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/danball/eartheditor/AdBanner;->getDummyView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/danball/eartheditor/AdBanner;

.field final synthetic val$button:Landroid/widget/ImageButton;


# direct methods
.method constructor <init>(Ljp/danball/eartheditor/AdBanner;Landroid/widget/ImageButton;)V
    .locals 0
    .param p1, "this$0"    # Ljp/danball/eartheditor/AdBanner;

    .prologue
    .line 286
    iput-object p1, p0, Ljp/danball/eartheditor/AdBanner$3;->this$0:Ljp/danball/eartheditor/AdBanner;

    iput-object p2, p0, Ljp/danball/eartheditor/AdBanner$3;->val$button:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 289
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 300
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 291
    :pswitch_1
    iget-object v0, p0, Ljp/danball/eartheditor/AdBanner$3;->val$button:Landroid/widget/ImageButton;

    const v1, -0x333334

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 297
    :pswitch_2
    iget-object v0, p0, Ljp/danball/eartheditor/AdBanner$3;->val$button:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->clearColorFilter()V

    goto :goto_0

    .line 289
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
