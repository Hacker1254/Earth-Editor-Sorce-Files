.class Ljp/danball/eartheditor/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/danball/eartheditor/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/danball/eartheditor/MainActivity;


# direct methods
.method constructor <init>(Ljp/danball/eartheditor/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Ljp/danball/eartheditor/MainActivity;

    .prologue
    .line 546
    iput-object p1, p0, Ljp/danball/eartheditor/MainActivity$4;->this$0:Ljp/danball/eartheditor/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 548
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v5, 0x1

    .line 552
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-eq v0, v5, :cond_0

    .line 554
    :goto_0
    return-void

    .line 553
    :cond_0
    iget-object v1, p0, Ljp/danball/eartheditor/MainActivity$4;->this$0:Ljp/danball/eartheditor/MainActivity;

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v4, v0, v4

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v0, v5

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x2

    aget v6, v0, v6

    invoke-static/range {v1 .. v6}, Ljp/danball/eartheditor/MainActivity;->access$400(Ljp/danball/eartheditor/MainActivity;JFFF)V

    goto :goto_0
.end method
