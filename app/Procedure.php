<?php
namespace App;

use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;

/**
 * Class Procedure
 *
 * @package App
 * @property string $code
 * @property string $name
 * @property double $price
 * @property time $duration
*/
class Procedure extends Model
{
    protected $fillable = ['code', 'name', 'price', 'duration'];
    

    /**
     * Set attribute to date format
     * @param $input
     */
    public function setPriceAttribute($input)
    {
        if ($input != '') {
            $this->attributes['price'] = $input;
        } else {
            $this->attributes['price'] = null;
        }
    }

    /**
     * Set attribute to date format
     * @param $input
     */
    public function setDurationAttribute($input)
    {
        if ($input != null && $input != '') {
            $this->attributes['duration'] = Carbon::createFromFormat('H:i:s', $input)->format('H:i:s');
        } else {
            $this->attributes['duration'] = null;
        }
    }

    /**
     * Get attribute from date format
     * @param $input
     *
     * @return string
     */
    public function getDurationAttribute($input)
    {
        if ($input != null && $input != '') {
            return Carbon::createFromFormat('H:i:s', $input)->format('H:i:s');
        } else {
            return '';
        }
    }
    
}
