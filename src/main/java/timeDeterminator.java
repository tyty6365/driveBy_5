public class timeDeterminator {
    double time;
    boolean am;
    boolean pm;

    public timeDeterminator(double time, boolean morning){
        this.time = time;
        if(morning){
            am = true;
            pm = false;
        }else{
            am = false;
            pm = true;
        }
    }
}
